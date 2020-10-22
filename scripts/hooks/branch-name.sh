#! /bin/bash

BRANCH_PREFIXES=( 'feat' 'perf' 'release' )

main() {
  # get current branch name
  local branch="$(git rev-parse --abbrev-ref HEAD)"

  # get allowed names from labels.yaml
  local LABEL_PREFIXES=( `less ../../.github/labels.yaml | sed -n "/name/p" | sed "s/- name: \"//" | sed "s/\"//" | sed -n "/^[a-z]*$/p"` )

  local PREFIXES=( "${LABEL_PREFIXES[@]}" "${BRANCH_PREFIXES[@]}" )

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

main
