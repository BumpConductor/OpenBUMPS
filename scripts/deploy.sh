#/bin/bash

set -e

echo TRAVIS_BRANCH=$TRAVIS_BRANCH
echo DEPLOY_BRANCH=$DEPLOY_BRANCH

if [ "$TRAVIS_BRANCH" == "$DEPLOY_BRANCH" ]; then
  npm config set open-bumps:profile production
  npm run deploy
fi
