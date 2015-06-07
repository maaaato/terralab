#!/bin/bash

get_date() {
    date
}

TITLE=`get_date`
HEAD=${1}
BASE=${2}

curl -i -H "Authorization: token ${GITHUB_TOKEN}" \
     -d '{"title":${TITLE}","head":${HEAD},"base":"${BASE}"}' \
     https://api.github.com/repos/maaaato/terralab/pulls
