#!/bin/bash
set -e

IP_ADDRESS=
PORT=

ssh -p $PORT root@$IP_ADDRESS mkdir -p training/data

ssh -p $PORT root@$IP_ADDRESS mkdir -p training/saved_model

echo "---------- Copy training notebook ----------"

scp -P $PORT training.ipynb  root@$IP_ADDRESS:~/training/

echo "---------- Copy input data ----------"

scp -P $PORT ./data/*.zip  root@$IP_ADDRESS:~/training/data

#echo "---------- Unzip input data ----------"
#
#ssh -p $PORT root@$IP_ADDRESS unzip ./training/data/*.zip -d training/data

echo "---------- Copy losses ----------"

scp -P $PORT *-losses.txt  root@$IP_ADDRESS:~/training/

echo "---------- Copy saved models ----------"

scp -P $PORT "./saved_model/$(ls -t saved_model/ | head -1)"  root@$IP_ADDRESS:~/training/saved_model
