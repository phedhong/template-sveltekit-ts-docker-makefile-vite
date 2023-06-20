#!/usr/bin/env sh
# 删除dist, 否则第二次会提示fatal: A branch named 'main' already exists.
rm -rf build

# 发生错误时终止
set -e

# 构建
npm run build

# 进入构建文件夹
cd build-static

# 如果你要部署到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m "initial commit"
git branch -M master
git remote add orgin https://github.com/phedhong/phedhong.github.io.git
git push -u origin master
# 如果你要部署在 https://<USERNAME>.github.io/<REPO>
git push -f https://github.com/phedhong/phedhong.github.io.git master:gh-pages

cd -