#! /bin/bash
# Script to check that the current branch name matches our conventions
# <prefix>/<description>
#   Prefix options come from BRANCH_PREFIX definition at top of file
#   and from .github/labels.yaml name property
#
#  based on https://itnext.io/using-git-hooks-to-enforce-branch-naming-policy-ffd81fa01e5e

DIR=`dirname $0`
BRANCH_PREFIXES=( 'feat' 'perf' 'release' )

prefixes() {
  # get allowed names from labels.yaml
  local LABEL_PREFIXES=( `less $DIR/../../.github/labels.yaml | sed -n "/name/p" | sed "s/- name: \"//" | sed "s/\"//" | sed -n "/^[a-z]*$/p"` )

  local PREFIXES=( "${LABEL_PREFIXES[@]}" "${BRANCH_PREFIXES[@]}" )

  echo "${PREFIXES[@]}"
}

main() {
  # get current branch name
  local branch="$(git rev-parse --abbrev-ref HEAD)"

  local PREFIXES=`prefixes`

  # create regix for branch names
  local regexp="^($(echo "${PREFIXES[@]}" | sed "s/ /|/g"))\/[A-Za-z0-9._-]+$"

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

case $1 in
  "-o"):
    prefixes 
  ;;
  *):
    main
esac

