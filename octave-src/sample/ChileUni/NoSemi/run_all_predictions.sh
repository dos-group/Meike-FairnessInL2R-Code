#!/bin/bash
# runs all predictions for Chile University data and saves results into respective folders

GIT_ROOT="$(git rev-parse --show-toplevel)"

PATH_TO_EXECUTABLE_DELTR=$GIT_ROOT/octave-src/src
PATH_TO_EXECUTABLE_LISTNET=$GIT_ROOT/Cao_src/listnet-master/src
PATH_TO_CHILE_NOSEMI_DATASETS=$GIT_ROOT/octave-src/sample/ChileUni/NoSemi

##########################################################################################
# all gender predictions
##########################################################################################

EXPERIMENT=gender

echo ""
echo "################################# PREDICTING GENDER NOSEMI #############################################"

FOLD=fold_1

echo "$FOLD predictions..."
cd $PATH_TO_EXECUTABLE_LISTNET
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_gender_nosemi_fold1_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/COLORBLIND/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/COLORBLIND/

./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_gender_nosemi_fold1_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/PREPROCESSED/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/PREPROCESSED/


#cd $PATH_TO_EXECUTABLE_DELTR
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_gender_nosemi_fold1_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=0/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=0/
#
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_gender_nosemi_fold1_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=SMALL/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=SMALL/
#
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_gender_nosemi_fold1_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=LARGE/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=LARGE/

FOLD=fold_2

echo "$FOLD predictions..."
cd $PATH_TO_EXECUTABLE_LISTNET
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_gender_nosemi_fold2_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/COLORBLIND/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/COLORBLIND/

./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_gender_nosemi_fold2_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/PREPROCESSED/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/PREPROCESSED/

#cd $PATH_TO_EXECUTABLE_DELTR
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_gender_nosemi_fold2_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=0/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=0/
#
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_gender_nosemi_fold2_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=SMALL/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=SMALL/
#
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_gender_nosemi_fold2_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=LARGE/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=LARGE/

FOLD=fold_3

echo "$FOLD predictions..."
cd $PATH_TO_EXECUTABLE_LISTNET
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_gender_nosemi_fold3_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/COLORBLIND/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/COLORBLIND/

./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_gender_nosemi_fold3_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/PREPROCESSED/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/PREPROCESSED/

#cd $PATH_TO_EXECUTABLE_DELTR
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_gender_nosemi_fold3_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=0/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=0/
#
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_gender_nosemi_fold3_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=SMALL/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=SMALL/
#
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_gender_nosemi_fold3_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=LARGE/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=LARGE/
#


FOLD=fold_4

echo "$FOLD predictions..."
cd $PATH_TO_EXECUTABLE_LISTNET
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_gender_nosemi_fold4_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/COLORBLIND/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/COLORBLIND/

./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_gender_nosemi_fold4_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/PREPROCESSED/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/PREPROCESSED/

#cd $PATH_TO_EXECUTABLE_DELTR
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_gender_nosemi_fold4_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=0/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=0/
#
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_gender_nosemi_fold4_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=SMALL/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=SMALL/
#
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_gender_nosemi_fold4_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=LARGE/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=LARGE/


FOLD=fold_5

echo "$FOLD predictions..."
cd $PATH_TO_EXECUTABLE_LISTNET
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_gender_nosemi_fold5_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/COLORBLIND/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/COLORBLIND/

./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_gender_nosemi_fold5_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/PREPROCESSED/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/PREPROCESSED/

#cd $PATH_TO_EXECUTABLE_DELTR
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_gender_nosemi_fold5_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=0/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=0/
#
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_gender_nosemi_fold5_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=SMALL/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=SMALL/
#
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_gender_nosemi_fold5_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=LARGE/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=LARGE/
#


##########################################################################################
# all highschool type experiments, no semi-private highschools
##########################################################################################

EXPERIMENT=highschool

FOLD=fold_1

echo ""
echo "################################# PREDICTING HIGHSCHOOL NOSEMI #############################################"

echo "$FOLD predictions..."
cd $PATH_TO_EXECUTABLE_LISTNET
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_highschool_nosemi_fold1_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/COLORBLIND/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/COLORBLIND/

./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_highschool_nosemi_fold1_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/PREPROCESSED/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/PREPROCESSED/

#cd $PATH_TO_EXECUTABLE_DELTR
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_highschool_nosemi_fold1_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=0/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=0/
#
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_highschool_nosemi_fold1_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=SMALL/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=SMALL/
#
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_highschool_nosemi_fold1_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=LARGE/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=LARGE/

FOLD=fold_2

echo "$FOLD predictions..."
cd $PATH_TO_EXECUTABLE_LISTNET
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_highschool_nosemi_fold2_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/COLORBLIND/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/COLORBLIND/

./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_highschool_nosemi_fold2_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/PREPROCESSED/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/PREPROCESSED/

#cd $PATH_TO_EXECUTABLE_DELTR
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_highschool_nosemi_fold2_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=0/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=0/
#
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_highschool_nosemi_fold2_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=SMALL/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=SMALL/
#
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_highschool_nosemi_fold2_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=LARGE/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=LARGE/


FOLD=fold_3

echo "$FOLD predictions..."
cd $PATH_TO_EXECUTABLE_LISTNET
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_highschool_nosemi_fold3_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/COLORBLIND/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/COLORBLIND/

./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_highschool_nosemi_fold3_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/PREPROCESSED/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/PREPROCESSED/

#cd $PATH_TO_EXECUTABLE_DELTR
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_highschool_nosemi_fold3_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=0/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=0/
#
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_highschool_nosemi_fold3_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=SMALL/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=SMALL/
#
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_highschool_nosemi_fold3_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=LARGE/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=LARGE/

FOLD=fold_4

echo "$FOLD predictions..."
cd $PATH_TO_EXECUTABLE_LISTNET
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_highschool_nosemi_fold4_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/COLORBLIND/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/COLORBLIND/

./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_highschool_nosemi_fold4_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/PREPROCESSED/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/PREPROCESSED/

#cd $PATH_TO_EXECUTABLE_DELTR
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_highschool_nosemi_fold4_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=0/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=0/
#
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_highschool_nosemi_fold4_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=SMALL/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=SMALL/
#
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_highschool_nosemi_fold4_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=LARGE/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=LARGE/

FOLD=fold_5

echo "$FOLD predictions..."
cd $PATH_TO_EXECUTABLE_LISTNET
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_highschool_nosemi_fold5_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/COLORBLIND/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/COLORBLIND/

./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_highschool_nosemi_fold5_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/PREPROCESSED/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/PREPROCESSED/

#cd $PATH_TO_EXECUTABLE_DELTR
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_highschool_nosemi_fold5_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=0/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=0/
#
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_highschool_nosemi_fold5_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=SMALL/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=SMALL/
#
#./predict.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/chileDataL2R_highschool_nosemi_fold5_test.txt $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=LARGE/model.m $PATH_TO_CHILE_NOSEMI_DATASETS/$EXPERIMENT/$FOLD/GAMMA\=LARGE/


