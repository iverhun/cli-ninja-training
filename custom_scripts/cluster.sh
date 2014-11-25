#!/bin/bash

CUSTOMERS_HOME="/home/iverhun/svnwork/customers/trunk/clean"
CUSTOMER_NAME=`echo $1 | tr '[:upper:]' '[:lower:]'`
echo $CUSTOMERS_HOME/$CUSTOMER_NAME/settings/*.sh | xargs grep 'CUSTOMER_CLUSTER'
