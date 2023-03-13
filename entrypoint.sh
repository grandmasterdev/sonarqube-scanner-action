#!/bin/bash

set -e

WORKSPACE_DIR='/github/workspace'

if [[ -z ${SONAR_TOKEN} ]]
then
    echo "================================"
    echo "            WARNING!            "
    echo "================================"
    echo "It is not recommended to access "
    echo "sonarqube without a SONAR_TOKEN."
fi

if [[ -z ${SONAR_HOST_URL} ]]
then
    echo "Missing SONAR_HOST_URL value from environment variable!"
    exit 1
fi

if [[ ! -z ${INPUT_WORKSPACEDIR} ]]
then
    WORKSPACE_DIR=${INPUT_WORKSPACEDIR}
fi

echo "current dir: "$(pwd)
cd ${WORKSPACE_DIR}
echo "workspace dir: "${INPUT_WORKSPACEDIR}
ls -la

PROJECT_BASE_DIR='.'

if [[ ! -z ${INPUT_PROJECTDIR} ]]
then
    PROJECT_BASE_DIR=${INPUT_PROJECTDIR}
fi

unset JAVA_HOME

sonar-scanner -Dsonar.projectBaseDir=${PROJECT_BASE_DIR} ${INPUT_ARGS}