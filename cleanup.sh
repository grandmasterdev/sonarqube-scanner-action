#!/bin/bash

set -e

_tmp_file=$(ls "${INPUT_CODEBASEDIR}/" | head -1)
PERM=$(stat -c "%u:%g" "${INPUT_CODEBASEDIR}/$_tmp_file")

chown -R $PERM "${INPUT_CODEBASEDIR}/"