#!/bin/bash

gitbook build . --title="Kimai Documentation" --github=kimai/kimai
cd _book
git init
git commit --allow-empty -m 'updated documentation'
git checkout -b gh-pages
touch .nojekyll
rm build.sh

echo '# GitHub Pages for Kimai docu

Please visit http://kimai.github.io/documentation/ for the online documentation' > README.md

git add .
git commit -am "updated book"
git push git@github.com:kimai/documentation gh-pages --force

cd ..
rm -rf _book
