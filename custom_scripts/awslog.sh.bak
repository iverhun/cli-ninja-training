#!/bin/bash

curl --proxy lab.bazaarvoice.com:33128 --proxy-user iverhun:PASSWORD $1  -o $HOME/avs.log --verbose > /dev/null &

tailf $HOME/avs.log | egrep "PASSED|FAILED|SKIPPED|ERROR"

