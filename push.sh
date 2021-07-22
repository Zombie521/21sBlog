#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

git config --global user.name "wuyiyao"
git config --global user.email "532117848@qq.com"
git init
git add -A
git commit -m "first commit"
git push -f https://github.com/Zombie521/21sBlogImg.git master:master