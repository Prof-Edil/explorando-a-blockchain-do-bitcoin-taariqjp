# Using descriptors, compute the taproot address at index 100 derived from this extended public key:
#   `xpub6Cx5tvq6nACSLJdra1A6WjqTo1SgeUZRFqsX5ysEtVBMwhCCRa4kfgFqaT2o1kwL3esB1PsYr3CUdfRZYfLHJunNWUABKftK2NjHUtzDms2`
# Uma xpub (Extended Public Key) é a combinação da chave pública com a hash. Ela é utilizada na infraestrutura 
# HD (Hierarchical Deterministic) Wallet. Nela, é possível definir um caminho derivado da Taproot.
# Para isso, é preciso de um descriptor capaz de caracterizar a chave, como Caminho de Derivação - contendo o 
# índice de determinada hierarquia de chaves - e Checksum. Essa técnica é utlizada na Segwit (Segregated Witness)
# traz mais privacidade para transações além de impactar positivamente a rede Bitcoin.
# No caso a função será a seguinte:
# "wpkh(xpub6Cx5tvq6nACSLJdra1A6WjqTo1SgeUZRFqsX5ysEtVBMwhCCRa4kfgFqaT2o1kwL3esB1PsYr3CUdfRZYfLHJunNWUABKftK2NjHUtzDms2)#vk92m8fd"
#
bitcoin-cli -rpcconnect=84.247.182.145:8332 -rpcuser=user_262 -rpcpassword=l6i5arFr3h8C deriveaddresses "tr(xpub6Cx5tvq6nACSLJdra1A6WjqTo1SgeUZRFqsX5ysEtVBMwhCCRa4kfgFqaT2o1kwL3esB1PsYr3CUdfRZYfLHJunNWUABKftK2NjHUtzDms2/*)#q4q7qurj" [100,100] | jq '.[0]'
