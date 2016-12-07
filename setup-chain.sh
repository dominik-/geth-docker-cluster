#!/usr/bin/env bash
#bash commands for testing and stuff
geth --datadir "./privatechain" init privatechain/genesis.json

geth --datadir "./privatechain" --password privatechain/passfile account new

geth --datadir "./privatechain" --ipcapi="admin,db,eth,debug,miner,net,shh,txpool,personal,web3" --rpcapi "db,personal,eth,net,web3" --rpccorsdomain="*" --networkid=9195 --rpc --rpcaddr="0.0.0.0"

sudo docker run -d -P geth-node --datadir "/privatechain" --nodekeyhex=091bd6067cb4612df85d9c1ff85cc47f259ced4d4cd99816b14f35650f59c322 --ipcapi="admin,db,eth,debug,miner,net,shh,txpool,personal,web3" --rpccorsdomain="*" --networkid=9195 --rpc --rpcaddr="0.0.0.0" bootnode

sudo docker run -d -P geth-node --datadir "/privatechain" --rpccorsdomain="*" --networkid=9195 --rpc --rpcaddr="0.0.0.0" --ipcapi="admin,db,eth,debug,miner,net,shh,txpool,personal,web3" --fast --cache=512 --mine --minerthreads=1 --bootnodes="enode://288b97262895b1c7ec61cf314c2e2004407d0a5dc77566877aad1f2a36659c8b698f4b56fd06c4a0c0bf007b4cfb3e7122d907da3b005fa90e724441902eb19e@172.17.0.3:30303"