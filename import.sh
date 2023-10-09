#!/bin/bash

USERNAME=$1
PASSWORD=$2
SCRIPTPATH=$3

for sql_file in `ls ${SCRIPTPATH}/*.sql`; do mysql -u${USERNAME} -p${PASSWORD}  < $sql_file ; done
