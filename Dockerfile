FROM ethereum/client-go:stable

WORKDIR /velora

COPY genesis.json .
COPY password.txt .

RUN mkdir data

CMD geth --datadir data init genesis.json && \
    geth --datadir data \
    --networkid 2025 \
    --http \
    --http.addr 0.0.0.0 \
    --http.port 8545 \
    --http.api eth,net,web3,personal,miner \
    --mine \
    --allow-insecure-unlock \
    --unlock $VALIDATOR_ADDRESS \
    --password password.txt
