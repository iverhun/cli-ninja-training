#!/bin/bash

usage() {

cat <<USAGE
Usage: patchprr <instance name> <db name> <patch.sql>
USAGE

exit 1

}


if [ $# -lt 2 -o "x$1" == "x-h" -o "x$1" == "x--help" ]
then
  if [ $# == 1 ]
  then
    mysql --socket=/var/lib/mysql-multi/$1/mysqld.$1.sock -u root -e "SELECT * FROM (SELECT * FROM $2.Patches p ORDER BY p.ID DESC LIMIT 15) AS p ORDER BY p.ID"
  fi
  usage
fi


mysql --socket=/var/run/mysqld/$1/mysqld.sock -u root $2 < $3
               
rc=$?

echo "patch applied: $rc" 

if [ $rc -eq 0 ]
then
  mysql --socket=/var/run/mysqld/$1/mysqld.sock -u root -e "INSERT INTO $2.Patches (Name, CreateTimestamp) VALUES ('$3', NOW())"
  echo Patch applied succesfully
fi
mysql --socket=/var/run/mysqld/$1/mysqld.sock -u root -e "SELECT * FROM (SELECT * FROM $2.Patches p ORDER BY p.ID DESC LIMIT 15) AS p ORDER BY p.ID"
