#!/usr/bin/octave -qf
% command line arguments:
% predict.m model feature_file

% suppress output
more off;


% load constants
addpath(".")
source "./globals.m";

arg_list = argv()

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SYNTHETIC EXPERIMENTS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% TOP MALE
%omega = load('../sample/synthetic/top_male_bottom_female/GAMMA=0/sample_model_gender_sep.m');
%drgfile = '../sample/synthetic/top_male_bottom_female/GAMMA=0/sample_test_data_scoreAndGender_separated.txt';

%omega = load('../sample/synthetic/top_male_bottom_female/GAMMA=75/sample_model_gender_sep.m');
%drgfile = '../sample/synthetic/top_male_bottom_female/GAMMA=75/sample_test_data_scoreAndGender_separated.txt';

%omega = load('../sample/synthetic/top_male_bottom_female/GAMMA=150/sample_model_gender_sep.m');
%drgfile = '../sample/synthetic/top_male_bottom_female/GAMMA=150/sample_test_data_scoreAndGender_separated.txt';

% TOP FEMALE
%omega = load('../sample/synthetic_score_gender/top_female_bottom_male/sample_model_gender_sep.m');
%drgfile = '../sample/synthetic_score_gender/top_female_bottom_male/sample_test_data_scoreAndGender_separated.txt';
%omega = load('../sample/synthetic_score_gender/distribution_based/sample_model_gender_normdist.m');
%drgfile = '../sample/synthetic_score_gender/distribution_based/sample_test_data_scoreAndGender_normalDistribution.txt';

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CHILE EXPERIMENT WITH SEMI_PRIVATE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% GENDER
%omega = load('../sample/ChileUni/GAMMA=0/chileDataL2R_gender_model.m');
%drgfile = '../sample/ChileUni/GAMMA=0/chileDataL2R_gender_test.txt';

%omega = load('../sample/ChileUni/GAMMA=100000/chileDataL2R_gender_model.m');
%drgfile = '../sample/ChileUni/GAMMA=100000/chileDataL2R_gender_test.txt';

%omega = load('../sample/ChileUni/GAMMA=5000000/chileDataL2R_gender_model.m');
%drgfile = '../sample/ChileUni/GAMMA=5000000/chileDataL2R_gender_test.txt';

% HIGHSCHOOL
%omega = load('../sample/ChileUni/GAMMA=0/chileDataL2R_highschool_model.m');
%drgfile = '../sample/ChileUni/GAMMA=0/chileDataL2R_highschool_test.txt';

%omega = load('../sample/ChileUni/GAMMA=100000/chileDataL2R_highschool_model.m');
%drgfile = '../sample/ChileUni/GAMMA=100000/chileDataL2R_highschool_test.txt';

%omega = load('../sample/ChileUni/GAMMA=5000000/chileDataL2R_highschool_model.m');
%drgfile = '../sample/ChileUni/GAMMA=5000000/chileDataL2R_highschool_test.txt';

% colorblind done in Cao original code

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CHILE EXPERIMENT WITHOUT SEMI-PRIVATE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% GENDER
%omega = load('../sample/ChileUni/NoSemi/GAMMA=0/chileDataL2R_gender_nosemi_model.m');
%drgfile = '../sample/ChileUni/NoSemi/GAMMA=0/chileDataL2R_gender_nosemi_test.txt';

%omega = load('../sample/ChileUni/NoSemi/GAMMA=100000/chileDataL2R_gender_nosemi_model.m');
%drgfile = '../sample/ChileUni/NoSemi/GAMMA=100000/chileDataL2R_gender_nosemi_test.txt';

%omega = load('../sample/ChileUni/NoSemi/GAMMA=5000000/chileDataL2R_gender_nosemi_model.m');
%drgfile = '../sample/ChileUni/NoSemi/GAMMA=5000000/chileDataL2R_gender_nosemi_test.txt';

% HIGHSCHOOL
%omega = load('../sample/ChileUni/NoSemi/GAMMA=0/chileDataL2R_highschool_nosemi_model.m');
%drgfile = '../sample/ChileUni/NoSemi/GAMMA=0/chileDataL2R_highschool_nosemi_test.txt';

%omega = load('../sample/ChileUni/NoSemi/GAMMA=100000/chileDataL2R_highschool_nosemi_model.m');
%drgfile = '../sample/ChileUni/NoSemi/GAMMA=100000/chileDataL2R_highschool_nosemi_test.txt';

%omega = load('../sample/ChileUni/NoSemi/GAMMA=5000000/chileDataL2R_highschool_nosemi_model.m');
%drgfile = '../sample/ChileUni/NoSemi/GAMMA=5000000/chileDataL2R_highschool_nosemi_test.txt';

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TREC
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%drgfile = "../sample/TREC/GAMMA=0/features_with_total_order-zscore-test.csv";
%omega = load("../sample/TREC/GAMMA=0/features_with_total_order-zscore_model.m");

%drgfile = "../sample/TREC/GAMMA=15000/features_with_total_order-zscore-test.csv";
%omega = load("../sample/TREC/GAMMA=15000/features_with_total_order-zscore_model.m");

%drgfile = "../sample/TREC/GAMMA=75000/features_with_total_order-zscore-test.csv";
%omega = load("../sample/TREC/GAMMA=75000/features_with_total_order-zscore_model.m");

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TREC BIG
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%drgfile = "../sample/TREC-BIG/GAMMA=0/features_with_total_order-withGender_withZscore_test.csv";
%omega = load("../sample/TREC-BIG/GAMMA=0/features_with_total_order-withGender_withZscore__model.m");

%drgfile = "../sample/TREC-BIG/GAMMA=15000/features_with_total_order-withGender_withZscore_test.csv";
%omega = load("../sample/TREC-BIG/GAMMA=15000/features_with_total_order-withGender_withZscore__model.m");

%drgfile = "../sample/TREC-BIG/GAMMA=75000/features_with_total_order-withGender_withZscore_test.csv";
%omega = load("../sample/TREC-BIG/GAMMA=75000/features_with_total_order-withGender_withZscore__model.m");

test_file = arg_list{1,1}
model_file = arg_list{2,1}
output_dir = arg_list{3,1}

omega = load(model_file);

drg = load(test_file);

list_id = drg(:,1);
X = drg(:,2:size(drg,2)-1);

z =  X * omega.omega;
doc_ids = 1:size(z);

# also write y for later evaluation
y = drg(:, size(drg,2));
y = [list_id, doc_ids', y, X(:, PROT_COL)];

filename = [output_dir "trainingScores_ORIG.pred"];
dlmwrite(filename, y);


# add protection status to a for later evaluation
z = [z, X(:, PROT_COL)];

# add list ids and document ids for later evaluation
z = [list_id, doc_ids', z];

unsorted_ranks = z;
filename = [output_dir "predictions_UNSORTED.pred"];
dlmwrite(filename, unsorted_ranks);

# add a little random to avoid ties
r = @(i) (i+rand*0.02-0.01);

for id = unique(list_id)'
    indexes = find(list_id==id);
    z_temp = z(indexes, :);
    z(indexes, :) = sortrows(z_temp, -3);
endfor
sorted_ranks = z;
filename = [output_dir "predictions_SORTED.pred"];

dlmwrite(filename, sorted_ranks)
%figure(); plot(z);
