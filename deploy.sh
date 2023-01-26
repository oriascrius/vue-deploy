#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# place .nojekyll to bypass Jekyll processing
echo > .nojekyll

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git checkout -B main
git add -A
git commit -m 'deploy'



# 以下兩種擇一開啟

# 部屬在 main 上
# if you are deploying to https://oriascrius.github.io
# git push -f git@github.com:oriascrius/oriascrius.github.io.git main

# 部屬在 gh-pages 上
# if you are deploying to https://oriascrius.github.io/vue-deploy
git push -f git@github.com:oriascrius/vue-deploy.git main:gh-pages

cd -