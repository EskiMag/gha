#!/bin/sh

set -eu

echo "hub api -X POST repos/$GITHUB_REPOSITORY/deployments -F ref=$GITHUB_REF description=\"$DEPLOYMENT_DESCRIPTION\""

JSON=$(hub api -X POST "repos/$GITHUB_REPOSITORY/deployments" \
  -F ref=$GITHUB_REF \
  required_contexts="[]" \
  description=$DEPLOYMENT_DESCRIPTION)

STATUSES_URL=$(echo $JSON | jq '.statuses_url')

hub api -X POST $STATUSES_URL -F state='success'
