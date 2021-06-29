#!/usr/bin/env sj

set -e

npm run build

cd dist

git add -A

git commit -m "new deployment"

git push -f git@github.com:ivandez/vuejs-covid-tracker.git

cd -