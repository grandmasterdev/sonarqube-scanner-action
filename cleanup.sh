#!/bin/bash

set -e

_tmp_file=$(ls "${INPUT_PROJECTDIR}/" | head -1)
PERM=$(stat -c "%u:%g" "${INPUT_PROJECTDIR}/$_tmp_file")

chown -R $PERM "${INPUT_PROJECTDIR}/"