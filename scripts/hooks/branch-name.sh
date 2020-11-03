#! /bin/bash
# Script to check that the current branch name matches our conventions
# <prefix>/<description>
#   Prefix options come from BRANCH_PREFIX definition at top of file
#   and from .github/labels.yaml name property
#
#  based on https://itnext.io/using-git-hooks-to-enforce-branch-naming-policy-ffd81fa01e5e


# NOTE: expect this to be called in this directory
DIR=`dirname $0`

main() {
  # get current branch name
  local branch="$(git rev-parse --abbrev-ref HEAD)"

  # get prefixes from shared list
  local PREFIXES=`$DIR/prefix-list.sh`

  # create regexp for branch names
  local regexp="^($(echo "${PREFIXES[@]}" | sed "s/ /|/g"))\/[A-Za-z0-9._\-]+$"

  # check that current branch matches regexp
  if [[ ! $branch =~ $regexp ]]; then
    # error if not found in list
    return -1
  fi


  #  for PREFIX in "${PREFIXES[@]}"
  #  do
  #    echo $PREFIX
  #  done
}

# case $1 in
#   "-h"):
#     prefixes 
#   ;;
#   *):
#    main
# esac

main

