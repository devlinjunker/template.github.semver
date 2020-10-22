#! /bin/bash

main() {
  local DIR=`dirname "$0"`

  local BRANCH_ERROR=" !  Branch name does not match conventions  "

  # if in hook, then prep PATH to find in repo `scripts/hooks/` dir 
  if [[ $DIR =~ ".git" ]]; then
    DIR+="/../../scripts/hooks"
  fi

  # Call branch name script
  $DIR/branch-name.sh

  # If failure then print message
  if [ $? -ne 0 ]; then
    echo "$(tput setaf 1)$(tput setab 7)$BRANCH_ERROR$(tput sgr 0)"
    echo "conventions"
    return -1
  fi

}

main
  
