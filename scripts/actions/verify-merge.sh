#! /bin/bash
# Verify that a branch can be merged

echo "$BRANCH"
if [[ "$BRANCH" =~ "poc/" ]]; then
  exit -1 
fi;
