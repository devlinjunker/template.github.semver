#! /bin/bash
# Verify that a branch can be merged

echo "$BRANCH"
if [[ "$BRANCH" =~ "poc/" ]]; then
  echo "Not allowed to merge POC branch"
  exit -1 
fi;

MSG=`git log $BRANCH -1 --pretty=format:"%s"`
echo "$MSG"
if [[ "$MSG" = wip* ]]; then
  echo "Not allowed to merge when last commit message starts with 'wip'"
  exit -1
fi
