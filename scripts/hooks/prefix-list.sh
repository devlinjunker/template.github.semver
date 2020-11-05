#! /bin/bash

OTHER_TYPES=( 'feat' 'fix' 'bugfix' 'perf' 'test' )

# set directory for calling other scripts
# NOTE: expect this to be called in this directory
DIR=`dirname $0`


main() {

  # get allowed names from labels.yaml
  LABEL_TYPES=( `less $DIR/../../.github/labels.yaml | sed -n "/name/p" | sed "s/- name: \"//" | sed "s/\"//" | sed -n "/^[a-z]*$/p"` )

  # merge labels.yaml with hardcoded
  local PREFIXES=( "${LABEL_TYPES[@]}" "${OTHER_TYPES[@]}" )

  echo "${PREFIXES[@]}"

}

main
