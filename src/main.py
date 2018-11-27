'''
Created on Apr 2, 2018

@author: meike.zehlike
'''
import argparse

from learning import Train
from data_preparation import *

global ONLY_U
ONLY_U = 0

global ONLY_L
ONLY_L = 0

global L_AND_U
L_AND_U = 1


def main():
    # parse command line options
    parser = argparse.ArgumentParser(prog='Disparate Exposure in Learning To Rank',
                                     epilog="=== === === end === === ===")

    parser.add_argument("--create",
                        nargs=1,
                        choices=['synthetic',
                                 'law-all',
                                 'law-gender',
                                 'law-asian',
                                 'law-black',
                                 'law-hispanic',
                                 'law-mexican',
                                 'law-puertorican',
                                 'trec',
                                 'engineering-withSemiPrivate',
                                 'engineering-withoutSemiPrivate'],
                        help="creates datasets from raw data and writes them to disk")
    parser.add_argument("--train",
                        nargs=4,
                        metavar=('TRAINING DATA', 'MODEL', 'DIRECTORY', 'GAMMA'),
                        help="runs training phase of DELTR with given GAMMA for given DATASET, stores \
                              trained model into file MODEL. All results are stored into DIRECTORY")
    parser.add_argument("--predict",
                        nargs=3,
                        metavar=('TEST DATA', 'MODEL', 'DIRECTORY'),
                        help="reads MODEL from disk, calculates predictions for TEST DATA and stores\
                              resulting rankings into DIRECTORY")
    parser.add_argument("--evaluate",
                        nargs=1,
                        metavar='DATASET',
                        help="evaluates performance and fairness metrics for DATASET predictions")

    args = parser.parse_args()

    ################### argparse create #########################
    if args.create == ['synthetic']:
        # TODO: link synthetic data here
        print('not yet implemented')
    elif args.create == ['lsat-all']:
        data = lawStudentDatasetPreparation.prepareAllInOneDataForFAIR()
        data.to_csv('../experiments/LawStudents/LSAT_AllInOne.csv', index=False, header=True)
    elif args.create == ['lsat-gender']:
        train, test = lawStudentDatasetPreparation.prepareGenderData()
        train.to_csv('../experiments/LawStudents/gender/LawStudents_Gender_train.txt', index=False, header=False)
        test.to_csv('../experiments/LawStudents/gender/LawStudents_Gender_test.txt', index=False, header=False)
    elif args.create == ['lsat-asian']:
        train, test = lawStudentDatasetPreparation.prepareRaceData('Asian', 'White')
        train.to_csv('../experiments/LawStudents/asian/LawStudents_Race_train.txt', index=False, header=False)
        test.to_csv('../experiments/LawStudents/asian/LawStudents_Race_test.txt', index=False, header=False)
    elif args.create == ['lsat-black']:
        train, test = lawStudentDatasetPreparation.prepareRaceData('Black', 'White')
        train.to_csv('../experiments/LawStudents/black/LawStudents_Race_train.txt', index=False, header=False)
        test.to_csv('../experiments/LawStudents/black/LawStudents_Race_test.txt', index=False, header=False)
    elif args.create == ['lsat-hispanic']:
        train, test = lawStudentDatasetPreparation.prepareRaceData('Hispanic', 'White')
        train.to_csv('../experiments/LawStudents/hispanic/LawStudents_Race_train.txt', index=False, header=False)
        test.to_csv('../experiments/LawStudents/hispanic/LawStudents_Race_test.txt', index=False, header=False)
    elif args.create == ['lsat-mexican']:
        train, test = lawStudentDatasetPreparation.prepareRaceData('Mexican', 'White')
        train.to_csv('../experiments/LawStudents/mexican/LawStudents_Race_train.txt', index=False, header=False)
        test.to_csv('../experiments/LawStudents/mexican/LawStudents_Race_test.txt', index=False, header=False)
    elif args.create == ['lsat-puertorican']:
        train, test = lawStudentDatasetPreparation.prepareRaceData('Puertorican', 'White')
        train.to_csv('../experiments/LawStudents/puertorican/LawStudents_Race_train.txt', index=False, header=False)
        test.to_csv('../experiments/LawStudents/puertorican/LawStudents_Race_test.txt', index=False, header=False)
    elif args.create == ['trec']:
        TRECDataToL2R.prepare()
    elif args.create == ['engineering-withSemiPrivate']:
        chileDataSetToL2R.prepareWithSemi()
    elif args.create == ['engineering-withoutSemiPrivate']:
        chileDataSetToL2R.prepareNoSemi()

    #################argparse train#############################
    elif args.train:
        pathToTrainingData = args.train[0]
        pathToModelFile = args.train[1]
        resultDir = args.train[2]
        gamma = float(args.train[3])

        numIter = 3000
        learningRate = 0.001
        protCol = 0
        protAttr = 1

        Train.train(pathToTrainingData, pathToModelFile, resultDir, gamma, numIter, learningRate, protCol, protAttr)
    elif args.predict:
        pathToTestData = args.predict[0]
        pathToModelFile = args.predict[1]
        resultDir = args.predict[2]
    else:
        parser.error("choose one command line option")


if __name__ == '__main__':
    main()
