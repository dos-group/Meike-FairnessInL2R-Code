function grad = listnet_gradient (X, y, z, list_id, prot_idx)
    % prot_idx : array for logical indexing that tells in which lines of the data are
    %            protected items 
    global CORES
    global GAMMA
    global DEBUG
    
    m = size(X,1);
    p = size(X,2);
    
    %find all data points that belong to one query
    lx = @(i) X(find(list_id == list_id(i)),:);
    ly = @(i) y(find(list_id == list_id(i)),:);
    lz = @(i) z(find(list_id == list_id(i)),:);
    
    % get idx of protected candidates per query, otherwise dimensions don't fit
    prot_idx_per_query = @(i) prot_idx(find(list_id == list_id(i)),:);

    % returns only those lines in which the logical array idx contains 1
    l_group_vec = @(preds, idx) preds(idx);
    l_group_mat = @(data, idx) data(idx, :);
    
    % Derivative for topp_prot in pieces:    
    % t = feature vector of (non-) protected group
    % u = predicted scores for (non-) protected group
    % v = predictions of all data points
    % w = feature vectors of all data points    
    tp1 = @(t, u) t .* repmat(exp(u), 1, columns(t));
    tp2 = @(v) sum(exp(v));  
    tp3 = @(w, v) sum(w' * exp(v));  
    tp4 = @(v) sum(exp(v))^2;  
    
    % collect data structures
    group_features_p = @(i) l_group_mat(lx(i), prot_idx_per_query(i));
    group_preds_p = @(i) l_group_vec(lz(i), prot_idx_per_query(i));
    group_features_np = @(i) l_group_mat(lx(i), !prot_idx_per_query(i));
    group_preds_np = @(i) l_group_vec(lz(i), !prot_idx_per_query(i));
    
    % derivative calculated for protected group and non-protected
    % contains weight adjustments for each feature (each column is a feature) 
    % of each document (each row is a document) (hence a matrix)
    % in order to get overall weight adjustment vector sum up elements in each column
    tp_p = @(i) sum(tp1(group_features_p(i), group_preds_p(i)) * (tp2(lz(i)) - tp3(lx(i), lz(i)))) / tp4(lz(i));
    tp_np = @(i) sum(tp1(group_features_np(i), group_preds_np(i)) * (tp2(lz(i)) - tp3(lx(i), lz(i)))) / tp4(lz(i));
        
    group_size_p = @(i) size(group_preds_p(i), 1);
    group_size_np = @(i) size(group_preds_np(i), 1);
 
    % Exposure in Rankings for the protected and non-protected group
    exposure_prot = @(i) sum(topp_prot(group_preds_p(i), lz(i))) ./ log(2);    
    exposure_nprot = @(i) sum(topp_prot(group_preds_np(i), lz(i))) ./ log(2);
    
    % normalize exposures
    exposure_prot_normalized = @(i) exposure_prot(i) / group_size_p(i); 
    exposure_nprot_normalized = @(i) exposure_nprot(i) / group_size_np(i);  
    
    % make sure u1 is not NaN
    u1 = @(i) 2 * max((exposure_prot_normalized(i) - exposure_nprot_normalized(i)), 0);
    u2 = @(i) tp_p(i) ./ log(2) / group_size_p(i);
    u3 = @(i) tp_np(i) ./ log(2) / group_size_np(i);
    U = @(i) u1(i) * (u2(i) - u3(i)); % should be vector of size n(q)
    
    l1 = @(i) -(lx(i)' * topp(ly(i)));
    l2 = @(i) (1 / sum(exp(lz(i))));
    l3 = @(i) (lx(i)' * exp(lz(i)));

    L = @(i) (l1(i) + l2(i) * l3(i)); % should be vector of size n(q)
    f = @(i) GAMMA * U(i) + L(i)';
    
    if DEBUG
      prot_idx_q1 = prot_idx_per_query(1);
      
      lz1 = lz(1);
      lx1 = lx(1);
      
      z_prot = l_group_vec(lz(1), prot_idx_per_query(1));
      x_prot = l_group_mat(lx(1), prot_idx_per_query(1));
      
      tp1p = tp1(x_prot, z_prot);
      tp2p = tp2(lz(1));
      tp3p = tp3(lx(1), lz(1));
      twoMinusThree = tp2(lz(1)) - tp3(lx(1), lz(1));
      tp4p = tp4(lz(1));
 
      tp_prot = tp_p(1);
      
      u1p = u1(1);
      u2p = u2(1);
      u3p = u3(1);
      
      fair_w = U(1);
      fair_w_gamma = GAMMA * U(1);
      acc_w = L(1);
      fval = fair_w_gamma + acc_w';
    end

    grad = reshape(pararrayfun(CORES, f, 1:m, "VerboseLevel", 0),p,m)';
end