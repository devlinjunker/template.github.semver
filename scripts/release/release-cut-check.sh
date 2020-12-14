#! /bin/bash

git branch -a | grep $RELEASE_BRANCH;

if [ $? -eq 0 ]; then
  echo "::error::Release Branch Already Exists";
  exit 1        
fi;