#!/bin/bash
set -x

rm -rf ./data && mkdir -p ./data/keystore 
cp ../artifacts/goQuorum/static-nodes.json ./data
cp ../artifacts/goQuorum/genesis.json ./data
cp ../artifacts/member0/nodekey* ./data
cp ../artifacts/member0/address ./data
cp ../artifacts/member0/account* ./data/keystore

geth --datadir data init data/genesis.json

meth attach http://127.0.0.1:22001 \
    --exec "raft.addLearner('enode://86e85331cf33610adeab8bbc81d6fdda89b2db2b2fe8cde30fc3f0f28244a46df90ffeddf124a811b51022985f09be0902962498a7aadccd4775d881fbcc060a@127.0.0.1:30304?discport=0&raftport=53004')" \
    