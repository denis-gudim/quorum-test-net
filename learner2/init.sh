#!/bin/bash
set -x

rm -rf ./data && mkdir -p ./data/keystore 
cp ../artifacts/goQuorum/static-nodes.json ./data
cp ../artifacts/goQuorum/genesis.json ./data
cp ../artifacts/member1/nodekey* ./data
cp ../artifacts/member1/address ./data
cp ../artifacts/member1/account* ./data/keystore

geth --datadir data init data/genesis.json

meth attach http://127.0.0.1:22001 \
    --exec "raft.addLearner('enode://64581849dfb4cec92a21f21d19bcf2f71e69d21ffc154ca5b00c6e13644e1ec6cacb10ac87b0170877503abb62ebb57fa41d67995592263531c0af8c85420436@127.0.0.1:30305?discport=0&raftport=53005')" \
    