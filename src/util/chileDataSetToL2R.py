'''
Created on May 7, 2018

@author: mzehlike
'''

import pandas as pd
import util.chileDatasetPreparation as prep

# write dataset for gender
data = pd.read_excel('../../data/ChileUniversity/UCH-FCFM-GRADES_2010_2014_chato.xls.xlsx')
data = prep.principalDataPreparation_withSemiPrivate(data)
train, test = prep.prepareForL2R(data)

train.to_csv('../../data/ChileUniversity/chileDataL2R_gender_train.txt', index=False, header=False)
test.to_csv('../../data/ChileUniversity/chileDataL2R_gender_test.txt', index=False, header=False)

# write dataset for highschool type
data = pd.read_excel('../../data/ChileUniversity/UCH-FCFM-GRADES_2010_2014_chato.xls.xlsx')
data = prep.principalDataPreparation_withSemiPrivate(data)
train, test = prep.prepareForL2R(data, gender=False)

train.to_csv('../../data/ChileUniversity/chileDataL2R_highschool_train.txt', index=False, header=False)
test.to_csv('../../data/ChileUniversity/chileDataL2R_highschool_test.txt', index=False, header=False)

# write dataset for colorblind rankings
data = pd.read_excel('../../data/ChileUniversity/UCH-FCFM-GRADES_2010_2014_chato.xls.xlsx')
data = prep.principalDataPreparation_withSemiPrivate(data)
train, test = prep.prepareForL2R(data, colorblind=True)

train.to_csv('../../data/ChileUniversity/chileDataL2R_colorblind_train.txt', index=False, header=False)
test.to_csv('../../data/ChileUniversity/chileDataL2R_colorblind_test.txt', index=False, header=False)

# TODO: remove this, dead code
# data = pd.read_csv('../../octave-src/sample/TREC/GAMMA=10000/features_with_total_order-zscore-train.csv', sep=',', names=['1', '2', '3', '4', '5', '6', '7', 'score'])
# data['score'] = 1 - data['score']
# data.to_csv('../../octave-src/sample/TREC/GAMMA=10000/features_with_total_order-zscore-train.csv', index=False, header=False)
#
# data = pd.read_csv('../../octave-src/sample/TREC/GAMMA=10000/features_with_total_order-zscore-test.csv', sep=',', names=['1', '2', '3', '4', '5', '6', '7', 'score'])
# data['score'] = 1 - data['score']
# data.to_csv('../../octave-src/sample/TREC/GAMMA=10000/features_with_total_order-zscore-test.csv', index=False, header=False)
