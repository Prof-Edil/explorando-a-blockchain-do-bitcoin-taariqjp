# How many new outputs were created by block 123,456?
#!/bin/bash
bitcoin-cli -rpcconnect=84.247.182.145:8332 -rpcuser=user_262 -rpcpassword=l6i5arFr3h8C getblockstats 123456
#outs -> 24
