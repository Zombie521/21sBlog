#!/usr/bin/env sh

# ȷ���ű��׳������Ĵ���
set -e

# git config --global user.name "wuyiyao"
# git config --global user.email "532117848@qq.com"
# git init
# git add -A
# git commit -m "first commit"
# git push -f git@github.com:github.com/Zombie521/21sBlogImg main:main

if [ -z "$GITHUB_TOKEN" ]; then
  msg='originCode'
  githubUrl=git@github.com:Zombie521/21sBlogImg.git
else
  msg='����github actions���Զ�����'
  githubUrl=https://wuyiyao:${GITHUB_TOKEN}@github.com/Zombie521/21sBlogImg.git
  git config --global user.name "wuyiyao"
  git config --global user.email "532117848@qq.com"
fi
git init
git add -A
git commit -m "${msg}"
git push -f $githubUrl main:main # ���͵��ֿ�github master��֧