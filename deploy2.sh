#!/bin/bash
GIT_REPO_URL=$(git config --get remote.origin.url)

mkdir .deploy
cp -R ./* .deploy
cd .deploy
git init .
git remote add github nharp189.github.io
git checkout -b gh-pages
git add .
git commit -am "Static site deploy"
git push github gh-pages --force
cd ..
rm -rf .deploy
