#!/bin/bash

HEAD=${1}
BASE=${2}
TITLE="`date +"%Y.%m.%d"` ${HEAD} into ${BASE}"
DATA='{"title":"'${TITLE}'","head":"'${HEAD}'","base":"'${BASE}'"}'

curl -i -H "Authorization: token ${GITHUB_TOKEN}" \
     -d "${DATA}" \
     https://api.github.com/repos/maaaato/terralab/pulls
