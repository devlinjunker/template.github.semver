#! /bin/bash
# Checks that the git diff is not getting to big and warns if it is

# TODO: how can we determine the branch we want to check against?

# last commit with "(#<number>)" in commit message
DIFF_BRANCH=`git log --pretty=oneline | sed -n "/\(#[0-9]*\)/p" | head -1 | sed "s/ .*//"`

# DIFF_BRANCH=master

FILE_LIMIT=10
LINE_LIMIT=1000

main() {
  DIFF_FILES=`git diff HEAD..$DIFF_BRANCH --stat | tail -n1 | tr ' ' '\n' | sed -n "/[[:digit:]]/p" | head -1`
  DIFF_LINES=`git diff HEAD..$DIFF_BRANCH --stat | tail -n1 | tr ' ' '\n' | sed -n "/[[:digit:]]/p" | tail -1`

  if [ $DIFF_FILES -gt $FILE_LIMIT ]; then
    echo " ! warning: more than $FILE_LIMIT files changed since $DIFF_BRANCH : $DIFF_FILES"
  fi

  if [ $DIFF_LINES -gt $LINE_LIMIT ]; then
    echo " ! warning: more than $LINE_LIMIT files changed since $DIFF_BRANCH : $DIFF_LINES"
  fi
}

main
