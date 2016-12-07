#Private Ethereum Network

Create your private, local, ethereum test network using docker-compose.

Inspired by https://github.com/Capgemini-AIE/ethereum-docker.

This project can be used to spin up a private network of Ethereum nodes, which use the Geth client implementation. The
network initially consists of one bootnode and one miner. The number of miners can be scaled using docker-compose. This
Docker setup is based on the official Ethereum go-client image on Dockerhub.

##Prerequisites
- Docker 1.10+
- Docker Compose 1.6.0+

##Usage
1. Change password in geth-node/passfile and your "Genesis"-Block (geth-node/genesis.json) as you see fit.
2. Run docker-compose build - this will build your Docker image, including the DAG - *as a result, this might take a while!*
3. Run docker-compose up -d
4. Check if your miner is doing work by using docker logs
5. Scale as you like, using docker-compose scale eth-miner=3 or any number you want to try.