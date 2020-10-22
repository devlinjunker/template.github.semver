#! /bin/bash

main() {
  local DIR=`dirname "$0"`

  local BRANCH_ERROR=" !  Branch name does not match conventions  "

  $DIR/branch-name.sh
  if [ $? -ne 0 ]; then
    echo "$(tput setaf 1)$(tput setab 7)$BRANCH_ERROR$(tput sgr 0)"
    return -1
  fi

}

main
  
