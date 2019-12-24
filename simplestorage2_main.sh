#!/bin/bash

dos2unix cli_deploy.sh
dos2unix azuredeploy.json
./cli_deploy.sh 2>&1 | tee LOG.deploy.`date "+%Y%m%d"`