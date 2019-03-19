#!/bin/bash

gan_type=$1
python main.py -g $gan_type -t real -d data/just_tweet_without_I_will_be_interviewed &> ./${gan_type}_training.log
#echo "abc" &> ${gan_type}_training.log

mkdir -p results/$gan_type
mv ${gan_type}_training.log results/$gan_type/
mv experiment* results/$gan_type/
cp save/* results/$gan_type/

