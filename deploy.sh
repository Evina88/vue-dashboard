#!/bin/sh



set -e

npm run build

cd dist

git init 

git add -A

git commit -m "new deployment"

git push -f https://github.com/Evina88/vue-dashboard.git main:gh-branches

cd -