#! /bin/bash
# Pre-commit githook to run before every commit to validate it locally
#   1. Check that branch name matches conventions (branch-name.sh)

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
    echo "  <prefix>/<description>"
    echo "prefix options: ($($DIR/branch-name.sh -o))"
    return -1
  fi

}

main
  
