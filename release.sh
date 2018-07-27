#!/bin/bash
PARAMETERS="-Dmaven.wagon.http.ssl.insecure=true -Dmaven.wagon.http.ssl.allowall=true -DskipTests=true"

mvn release:prepare -U ${PARAMETERS} -DautoVersionSubmodules=true -Pintegration-tests,quality -DskipTests=true -Darguments="${PARAMETERS}" && mvn release:perform -Pintegration-tests,quality ${PARAMETERS} -Darguments="${PARAMETERS}"
