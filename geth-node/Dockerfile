FROM ethereum/client-go:alpine

#create local directory for this node and expose it as a volume
RUN mkdir /privatechain

ADD genesis.json /privatechain/genesis.json
ADD passfile /privatechain/passfile

RUN /geth --datadir "/privatechain" init /privatechain/genesis.json
RUN /geth --datadir "/privatechain" --password privatechain/passfile account new | awk -F '[{}]' '{print $(NF-1)}' > /privatechain/accID
RUN mkdir -p ~/.ethash && /geth --datadir "/privatechain" makedag 0 ~/.ethash

VOLUME /privatechain

#re-define entrypoint (same as in "from-file")
ENTRYPOINT ["/geth"]
