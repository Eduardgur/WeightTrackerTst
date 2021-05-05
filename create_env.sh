#!/bin/bash
rm -f ./.env
cp ./.env.back /.env

defaultOktaUrl="{OKTA_URL}"
defaultOktaId="{OKTA_ID}"
defaultOktSec="{OKTA_SECRET}"
defaultDbIp="{DB_IP}"
defaultDBUser="{POSTGRE_USER}"
defaultDBName="{POSTGRE_DB_NAME}"
defaultDBPass="{POSTGRE_PASS}"

oktaUrl=$1
oktaId=$2
oktaSec=$3
dbIp=$4
dbName=$5
dbUser=$6
dbPass=$7

envFile="./.env"

sudo sed -i "s/"$defaultPublicIp"/"$publicIp"/" "$envFile"
sudo sed -i "s,$defaultOktaUrl,$oktaUrl," "$envFile"
sudo sed -i "s/"$defaultOktaId"/"$oktaId"/" "$envFile"
sudo sed -i "s/"$defaultOktSec"/"$oktaSec"/" "$envFile"
sudo sed -i "s/"$defaultDbIp"/"$dbIp"/" "$envFile"
sudo sed -i "s/"$defaultDBUser"/"$dbUser"/" "$envFile"
sudo sed -i "s/"$defaultDBName"/"$dbName"/" "$envFile"
sudo sed -i "s/"$defaultDBPass"/"$dbPass"/" "$envFile"
cat $envFile