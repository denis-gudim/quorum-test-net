#!/bin/bash
set -x

rm -rf ./data && mkdir -p ./data/keystore 
cp ../artifacts/goQuorum/static-nodes.json ./data
cp ../artifacts/goQuorum/genesis.json ./data
cp ../artifacts/validator1/nodekey* ./data
cp ../artifacts/validator1/address ./data
cp ../artifacts/validator1/account* ./data/keystore

geth --datadir data init data/genesis.json