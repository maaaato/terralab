#!/bin/bash

RESULT=`terraform plan`

curl -X POST --data-urlencode 'payload={"channel": "#general", "username": "pullreq-bot", "text": ${RESULT}}' https://hooks.slack.com/services/${circleci_for_slack}
