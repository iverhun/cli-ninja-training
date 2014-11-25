#!/bin/bash

SCHEMA_PATH=/svnwork/prr/trunk/clean/src/database/clean

echo "create prr test db..."
mysql -u root -e "DROP DATABASE IF EXISTS bv_test"
mysql -u root -e "CREATE DATABASE  bv_test"

mysql -u root bv_test < $SCHEMA_PATH/prr-schema.sql
mysql -u root bv_test < $SCHEMA_PATH/prr-patches.sql 
echo "prr test db created"


echo "create portal test db..."
mysql -u root -e "DROP DATABASE IF EXISTS bv_portal_test"
mysql -u root -e "CREATE DATABASE  bv_portal_test"

mysql -u root bv_portal_test < $SCHEMA_PATH/portal-schema.sql
mysql -u root bv_portal_test < $SCHEMA_PATH/portal-patches.sql
echo "portal test db created"

