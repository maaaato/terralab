#!/bin/bash

HEAD=${1}
BASE=${2}
TITLE="`date +"%Y.%m.%d"` ${1} into ${BASE}"

curl -i -H "Authorization: token ${GITHUB_TOKEN}" \
     -d '{"title":"'${TITLE}'","head":"'${HEAD}'","base":"'${BASE}'"}' \
     https://api.github.com/repos/maaaato/terralab/pulls
