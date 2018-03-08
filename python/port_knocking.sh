#!/bin/bash
HOST=$1
shift
for ARG in "$@"
do
    nmap -Pn --host_timeout 100 --max-retries 0 -p $ARG $HOST
done

#usage [root:~]# ./knock.sh 10.0.1.113 7000 8000 9000 7000 8000 && telnet 10.0.1.113 8888
