#! /bin/bash

echo "$BRANCH"
if [[ "$BRANCH" ~= "poc.*:" ]]; then
  exit -1 
fi;
