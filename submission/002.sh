# (true / false) Verify the signature by this address over this message:
#   address: `1E9YwDtYf9R29ekNAfbV7MvB4LNv7v3fGa`
#   message: `1E9YwDtYf9R29ekNAfbV7MvB4LNv7v3fGa`
#   signature: `HCsBcgB+Wcm8kOGMH8IpNeg0H4gjCrlqwDf/GlSXphZGBYxm0QkKEPhh9DTJRp2IDNUhVr0FhP9qCqo2W0recNM=`

#!/bin/bash
bitcoin-cli -rpcconnect=84.247.182.145:8332 -rpcuser=user_262 -rpcpassword=l6i5arFr3h8C verifymessage 1E9YwDtYf9R29ekNAfbV7MvB4LNv7v3fGa HCsBcgB+Wcm8kOGMH8IpNeg0H4gjCrlqwDf/GlSXphZGBYxm0QkKEPhh9DTJRp2IDNUhVr0FhP9qCqo2W0recNM= 1E9YwDtYf9R29ekNAfbV7MvB4LNv7v3fGa
#output -> false
