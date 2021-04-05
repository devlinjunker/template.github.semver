#! /bin/bash

if [[ "$1" != "main" && "$1" != "release-"* ]]; then
  echo "::error::Cannot Cut Patch off of non 'release-*' or 'main' branch";
  exit 1        
fi;