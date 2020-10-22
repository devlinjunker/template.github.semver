#! /bin/bash

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
  local regexp=`echo "${PREFIXES[@]}" | sed "s/ /|/g"`

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

