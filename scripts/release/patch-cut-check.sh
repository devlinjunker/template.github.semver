#! /bin/bash

if ! [[ "$1" != "origin/main" && "$1" != "origin/release-*" ]]; then
  echo "::error::Cannot Cut Patch off of non 'release-*' or 'main' branch";
  exit 1        
fi;