#!/bin/bash

#################################
#
#   Created by Gina - Possibly the experiment runs, other than the PREPROCESSED ones, are not correct
#   Gamma is therefore set to zero !
#
##################################


# runs all trainings for LSAT data and saves result models into respective folders

GIT_ROOT="$(git rev-parse --show-toplevel)"

PATH_TO_EXECUTABLE_DELTR=$GIT_ROOT/octave-src/src
PATH_TO_EXECUTABLE_LISTNET=$GIT_ROOT/Cao_src/listnet-master/src
PATH_TO_LSAT_DATASETS=$GIT_ROOT/octave-src/sample/LawStudents #-BIG

GAMMA_SMALL=0 # 20000 Ich weiß nicht was hier das richtige Gamma ist
GAMMA_LARGE=0 # 200000 Ich weiß nicht was hier das richtige Gamma ist

echo ""
#################################################################################

FOLD=gender

#echo "$FOLD COLORBLIND..."
#cd $PATH_TO_EXECUTABLE_LISTNET
#./train.m $PATH_TO_LSAT_DATASETS/$FOLD/COLORBLIND/ $PATH_TO_LSAT_DATASETS/$FOLD/LawStudents_Gender_train.txt $PATH_TO_LSAT_DATASETS/$FOLD/COLORBLIND/model.m

echo "$FOLD PREPROCESSED..."
cd $PATH_TO_EXECUTABLE_LISTNET
./train.m $PATH_TO_LSAT_DATASETS/$FOLD/PREPROCESSED/ $PATH_TO_LSAT_DATASETS/$FOLD/LawStudents_Gender_train_RERANKED.txt $PATH_TO_LSAT_DATASETS/$FOLD/PREPROCESSED/model.m

#echo "$FOLD GAMMA=0..."
#
#cd $PATH_TO_EXECUTABLE_DELTR
#./train.m $PATH_TO_LSAT_DATASETS/$FOLD/GAMMA\=0/ $PATH_TO_LSAT_DATASETS/$FOLD/LawStudents_Gender_train.txt $PATH_TO_LSAT_DATASETS/$FOLD/GAMMA\=0/model.m 0
#
#
#echo "$FOLD GAMMA=SMALL..."
#./train.m $PATH_TO_LSAT_DATASETS/$FOLD/GAMMA\=SMALL/ $PATH_TO_LSAT_DATASETS/$FOLD/LawStudents_Gender_train.txt $PATH_TO_LSAT_DATASETS/$FOLD/GAMMA\=SMALL/model.m $GAMMA_SMALL
#
#echo "$FOLD GAMMA=LARGE..."
#./train.m $PATH_TO_LSAT_DATASETS/$FOLD/GAMMA\=LARGE/ $PATH_TO_LSAT_DATASETS/$FOLD/LawStudents_Gender_train.txt $PATH_TO_LSAT_DATASETS/$FOLD/GAMMA\=LARGE/model.m $GAMMA_LARGE

###################################################################################

FOLD=race_asian

#echo "$FOLD COLORBLIND..."
#cd $PATH_TO_EXECUTABLE_LISTNET
#./train.m $PATH_TO_LSAT_DATASETS/$FOLD/COLORBLIND/ $PATH_TO_LSAT_DATASETS/$FOLD/LawStudents_Race_train.txt $PATH_TO_LSAT_DATASETS/$FOLD/COLORBLIND/model.m

echo "$FOLD PREPROCESSED..."
cd $PATH_TO_EXECUTABLE_LISTNET
./train.m $PATH_TO_LSAT_DATASETS/$FOLD/PREPROCESSED/ $PATH_TO_LSAT_DATASETS/$FOLD/LawStudents_Race_train_RERANKED.txt $PATH_TO_LSAT_DATASETS/$FOLD/PREPROCESSED/model.m

#echo "$FOLD GAMMA=0..."
#
#cd $PATH_TO_EXECUTABLE_DELTR
#./train.m $PATH_TO_LSAT_DATASETS/$FOLD/GAMMA\=0/ $PATH_TO_LSAT_DATASETS/$FOLD/LawStudents_Race_train.txt $PATH_TO_LSAT_DATASETS/$FOLD/GAMMA\=0/model.m 0
#
#
#echo "$FOLD GAMMA=SMALL..."
#./train.m $PATH_TO_LSAT_DATASETS/$FOLD/GAMMA\=SMALL/ $PATH_TO_LSAT_DATASETS/$FOLD/LawStudents_Race_train.txt $PATH_TO_LSAT_DATASETS/$FOLD/GAMMA\=SMALL/model.m $GAMMA_SMALL
#
#echo "$FOLD GAMMA=LARGE..."
#./train.m $PATH_TO_LSAT_DATASETS/$FOLD/GAMMA\=LARGE/ $PATH_TO_LSAT_DATASETS/$FOLD/LawStudents_Race_train.txt $PATH_TO_LSAT_DATASETS/$FOLD/GAMMA\=LARGE/model.m $GAMMA_LARGE
#####################################################################################

FOLD=race_black

#echo "$FOLD COLORBLIND..."
#cd $PATH_TO_EXECUTABLE_LISTNET
#./train.m $PATH_TO_LSAT_DATASETS/$FOLD/COLORBLIND/ $PATH_TO_LSAT_DATASETS/$FOLD/LawStudents_Race_train.txt $PATH_TO_LSAT_DATASETS/$FOLD/COLORBLIND/model.m

echo "$FOLD PREPROCESSED..."
cd $PATH_TO_EXECUTABLE_LISTNET
./train.m $PATH_TO_LSAT_DATASETS/$FOLD/PREPROCESSED/ $PATH_TO_LSAT_DATASETS/$FOLD/LawStudents_Race_train_RERANKED.txt $PATH_TO_LSAT_DATASETS/$FOLD/PREPROCESSED/model.m

#echo "$FOLD GAMMA=0..."
#
#cd $PATH_TO_EXECUTABLE_DELTR
#./train.m $PATH_TO_LSAT_DATASETS/$FOLD/GAMMA\=0/ $PATH_TO_LSAT_DATASETS/$FOLD/LawStudents_Race_train.txt $PATH_TO_LSAT_DATASETS/$FOLD/GAMMA\=0/model.m 0
#
#
#echo "$FOLD GAMMA=SMALL..."
#./train.m $PATH_TO_LSAT_DATASETS/$FOLD/GAMMA\=SMALL/ $PATH_TO_LSAT_DATASETS/$FOLD/LawStudents_Race_train.txt $PATH_TO_LSAT_DATASETS/$FOLD/GAMMA\=SMALL/model.m $GAMMA_SMALL
#
#echo "$FOLD GAMMA=LARGE..."
#./train.m $PATH_TO_LSAT_DATASETS/$FOLD/GAMMA\=LARGE/ $PATH_TO_LSAT_DATASETS/$FOLD/LawStudents_Race_train.txt $PATH_TO_LSAT_DATASETS/$FOLD/GAMMA\=LARGE/model.m $GAMMA_LARGE
######################################################################################

FOLD=race_hispanic

#echo "$FOLD COLORBLIND..."
#cd $PATH_TO_EXECUTABLE_LISTNET
#./train.m $PATH_TO_LSAT_DATASETS/$FOLD/COLORBLIND/ $PATH_TO_LSAT_DATASETS/$FOLD/LawStudents_Race_train.txt $PATH_TO_LSAT_DATASETS/$FOLD/COLORBLIND/model.m

echo "$FOLD PREPROCESSED..."
cd $PATH_TO_EXECUTABLE_LISTNET
./train.m $PATH_TO_LSAT_DATASETS/$FOLD/PREPROCESSED/ $PATH_TO_LSAT_DATASETS/$FOLD/LawStudents_Race_train_RERANKED.txt $PATH_TO_LSAT_DATASETS/$FOLD/PREPROCESSED/model.m

#echo "$FOLD GAMMA=0..."
#
#cd $PATH_TO_EXECUTABLE_DELTR
#./train.m $PATH_TO_LSAT_DATASETS/$FOLD/GAMMA\=0/ $PATH_TO_LSAT_DATASETS/$FOLD/LawStudents_Race_train.txt $PATH_TO_LSAT_DATASETS/$FOLD/GAMMA\=0/model.m 0
#
#
#echo "$FOLD GAMMA=SMALL..."
#./train.m $PATH_TO_LSAT_DATASETS/$FOLD/GAMMA\=SMALL/ $PATH_TO_LSAT_DATASETS/$FOLD/LawStudents_Race_train.txt $PATH_TO_LSAT_DATASETS/$FOLD/GAMMA\=SMALL/model.m $GAMMA_SMALL
#
#echo "$FOLD GAMMA=LARGE..."
#./train.m $PATH_TO_LSAT_DATASETS/$FOLD/GAMMA\=LARGE/ $PATH_TO_LSAT_DATASETS/$FOLD/LawStudents_Race_train.txt $PATH_TO_LSAT_DATASETS/$FOLD/GAMMA\=LARGE/model.m $GAMMA_LARGE
#######################################################################################

FOLD=race_mexican

#echo "$FOLD COLORBLIND..."
#cd $PATH_TO_EXECUTABLE_LISTNET
#./train.m $PATH_TO_LSAT_DATASETS/$FOLD/COLORBLIND/ $PATH_TO_LSAT_DATASETS/$FOLD/LawStudents_Race_train.txt $PATH_TO_LSAT_DATASETS/$FOLD/COLORBLIND/model.m

echo "$FOLD PREPROCESSED..."
cd $PATH_TO_EXECUTABLE_LISTNET
./train.m $PATH_TO_LSAT_DATASETS/$FOLD/PREPROCESSED/ $PATH_TO_LSAT_DATASETS/$FOLD/LawStudents_Race_train_RERANKED.txt $PATH_TO_LSAT_DATASETS/$FOLD/PREPROCESSED/model.m

#echo "$FOLD GAMMA=0..."
#
#cd $PATH_TO_EXECUTABLE_DELTR
#./train.m $PATH_TO_LSAT_DATASETS/$FOLD/GAMMA\=0/ $PATH_TO_LSAT_DATASETS/$FOLD/LawStudents_Race_train.txt $PATH_TO_LSAT_DATASETS/$FOLD/GAMMA\=0/model.m 0
#
#
#echo "$FOLD GAMMA=SMALL..."
#./train.m $PATH_TO_LSAT_DATASETS/$FOLD/GAMMA\=SMALL/ $PATH_TO_LSAT_DATASETS/$FOLD/LawStudents_Race_train.txt $PATH_TO_LSAT_DATASETS/$FOLD/GAMMA\=SMALL/model.m $GAMMA_SMALL
#
#echo "$FOLD GAMMA=LARGE..."
#./train.m $PATH_TO_LSAT_DATASETS/$FOLD/GAMMA\=LARGE/ $PATH_TO_LSAT_DATASETS/$FOLD/LawStudents_Race_train.txt $PATH_TO_LSAT_DATASETS/$FOLD/GAMMA\=LARGE/model.m $GAMMA_LARGE
#######################################################################################

FOLD=race_puertorican

#echo "$FOLD COLORBLIND..."
#cd $PATH_TO_EXECUTABLE_LISTNET
#./train.m $PATH_TO_LSAT_DATASETS/$FOLD/COLORBLIND/ $PATH_TO_LSAT_DATASETS/$FOLD/LawStudents_Race_train.txt $PATH_TO_LSAT_DATASETS/$FOLD/COLORBLIND/model.m

echo "$FOLD PREPROCESSED..."
cd $PATH_TO_EXECUTABLE_LISTNET
./train.m $PATH_TO_LSAT_DATASETS/$FOLD/PREPROCESSED/ $PATH_TO_LSAT_DATASETS/$FOLD/LawStudents_Race_train_RERANKED.txt $PATH_TO_LSAT_DATASETS/$FOLD/PREPROCESSED/model.m

#echo "$FOLD GAMMA=0..."
#
#cd $PATH_TO_EXECUTABLE_DELTR
#./train.m $PATH_TO_LSAT_DATASETS/$FOLD/GAMMA\=0/ $PATH_TO_LSAT_DATASETS/$FOLD/LawStudents_Race_train.txt $PATH_TO_LSAT_DATASETS/$FOLD/GAMMA\=0/model.m 0
#
#
#echo "$FOLD GAMMA=SMALL..."
#./train.m $PATH_TO_LSAT_DATASETS/$FOLD/GAMMA\=SMALL/ $PATH_TO_LSAT_DATASETS/$FOLD/LawStudents_Race_train.txt $PATH_TO_LSAT_DATASETS/$FOLD/GAMMA\=SMALL/model.m $GAMMA_SMALL
#
#echo "$FOLD GAMMA=LARGE..."
#./train.m $PATH_TO_LSAT_DATASETS/$FOLD/GAMMA\=LARGE/ $PATH_TO_LSAT_DATASETS/$FOLD/LawStudents_Race_train.txt $PATH_TO_LSAT_DATASETS/$FOLD/GAMMA\=LARGE/model.m $GAMMA_LARGE