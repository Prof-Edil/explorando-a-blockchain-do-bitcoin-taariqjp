# Create a 1-of-4 P2SH multisig address from the public keys in the four inputs of this tx:
#   `37d966a263350fe747f1c606b159987545844a493dd38d84b070027a895c4517`
#!/bin/bash

tx=$(bitcoin-cli -rpcconnect=84.247.182.145:8332 -rpcuser=user_262 -rpcpassword=l6i5arFr3h8C getrawtransaction "37d966a263350fe747f1c606b159987545844a493dd38d84b070027a895c4517" 2)

xpub1=$(echo "$tx" | jq  -r '.vin[0].txinwitness[1]')

xpub2=$(echo "$tx" | jq  -r '.vin[1].txinwitness[1]')

xpub3=$(echo "$tx" | jq  -r '.vin[2].txinwitness[1]')

xpub4=$(echo "$tx" | jq  -r '.vin[3].txinwitness[1]')

multisig=$(bitcoin-cli -rpcconnect=84.247.182.145:8332 -rpcuser=user_262 -rpcpassword=l6i5arFr3h8C createmultisig 1 "[\"$xpub1\",\"$xpub2\",\"$xpub3\",\"$xpub4\"]")

echo $multisig | jq -r '.address'
