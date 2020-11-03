#! /bin/bash

DIR=`dirname "$0"`

# if in hook, then prep PATH to find in repo `scripts/hooks/` dir
if [[ $DIR =~ ".git" ]]; then
  DIR+="/../../scripts/hooks"
fi

main() {
  local BRANCH_NAME_ERROR=" !  Branch name does not match conventions  "

  # Call branch name script
  $DIR/branch-name.sh
  if [ $? -ne 0 ]; then
    echo "$(tput setaf 1)$(tput setab 7)$BRANCH_NAME_ERROR$(tput sgr 0)"
    echo "  <prefix>/<description>"
    echo "prefix options: ($($DIR/branch-name.sh -o))"
    return -1
  fi
}

main
