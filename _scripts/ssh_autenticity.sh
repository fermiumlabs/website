#!/bin/bash
set -e
DEPLOY_DIR_BASE="/var/www/html/"

# Push codebase to the servers via rsync.
for SERVER in $SERVERS
do
  - ssh-keyscan -H $SERVER 2>&1 | sort -u - ~/.ssh/known_hosts > ~/.ssh/tmp_hosts && mv ~/.ssh/tmp_hosts ~/.ssh/known_hosts
done