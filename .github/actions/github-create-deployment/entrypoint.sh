#!/bin/sh

set -eu

echo "hub api -X POST repos/$GITHUB_REPOSITORY/deployments -F ref=$GITHUB_REF description=\"$DEPLOYMENT_DESCRIPTION\""

hub api -X POST "repos/$GITHUB_REPOSITORY/deployments" \
  -F ref=$GITHUB_REF \
  required_contexts="[]" \
  description=$DEPLOYMENT_DESCRIPTION

# hub api -X POST https://api.github.com/repos/smarkup/web/deployments/164190170/statuses \
# -F state='success'
