#! /bin/bash
# Verify that a branch can be merged

echo "$BRANCH"
if [[ "$BRANCH" =~ "poc/" ]]; then
  exit -1 
fi;

MSG=`git log $BRANCH -1 --pretty=format:"%s"`
echo "$MSG"
if [[ "$MSG" =~ wip* ]]; then
  exit -1
fi
