#!/bin/bash
set -x

rm -rf ./data && mkdir -p ./data/keystore 
cp ../artifacts/goQuorum/static-nodes.json ./data
cp ../artifacts/goQuorum/genesis.json ./data
cp ../artifacts/validator0/nodekey* ./data
cp ../artifacts/validator0/address ./data
cp ../artifacts/validator0/account* ./data/keystore

geth --datadir data init data/genesis.json