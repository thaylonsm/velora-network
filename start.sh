#!/bin/bash

geth --datadir data init genesis.json

geth --datadir data \
--networkid 2025 \
--http \
--http.addr 0.0.0.0 \
--http.port 8545 \
--http.api "eth,net,web3,personal,miner" \
--mine
