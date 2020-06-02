#!/bin/bash
timestamp=`date +%Y/%m/%d-%H:%M:%S`
echo "Health check at $timestamp" >>
java -jar -Dmodules=healthcheck  -Denv.user=qa  -Denv.endpoint=https://sandboxv2.southindia.cloudapp.azure.com Orchestrator.jar