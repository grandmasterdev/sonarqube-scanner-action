#!/bin/bash

set -e

unset JAVA_HOME

WORKSPACE_DIR='/github/workspace'

if [[ ! -z ${INPUT_WORKSPACEDIR} ]]
then
    $WORKSPACE_DIR=${INPUT_WORKSPACEDIR}
fi

pwd
cd $WORKSPACE_DIR
echo "workspace dir: "${INPUT_WORKSPACEDIR}
ls -la

PROJECT_BASE_DIR=$WORKSPACE_DIR

if [[ ! -z ${INPUT_PROJECTDIR} ]]
then
    $PROJECT_BASE_DIR=${INPUT_WORKSPACEDIR}
fi

sonar-scanner -Dsonar.projectBaseDir=$PROJECT_BASE_DIR