#!/bin/bash
set -e

for SERVER in "${SERVERS[@]}"
do
  echo $SERVER
  - ssh-keyscan -H $SERVER 2>&1 | sort -u - ~/.ssh/known_hosts > ~/.ssh/tmp_hosts && mv ~/.ssh/tmp_hosts ~/.ssh/known_hosts
done
