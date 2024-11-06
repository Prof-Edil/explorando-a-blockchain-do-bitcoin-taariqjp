#!/bin/bash
# What is the hash of block 654,321?
bitcoin-cli -rpcconnect=84.247.182.145:8332 -rpcuser=user_262 -rpcpassword=l6i5arFr3h8C getblockhash 654321
# Out -> 000000000000000000058452bbe379ad4364fe8fda68c45e299979b492858095
