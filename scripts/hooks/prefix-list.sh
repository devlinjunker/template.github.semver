#! /bin/bash

DIR=`dirname $0`

all_prefixes() {
  # get allowed names from labels.yaml
  LABEL_TYPES=( `less $DIR/../../.github/labels.yaml | sed -n "/name/p" | sed "s/- name: \"//" | sed "s/\"//" | sed -n "/^[a-z]*$/p"` )
  OTHER_TYPES=( 'feat' 'fix' 'bugfix' 'perf' 'test' )

  local PREFIXES=( "${LABEL_TYPES[@]}" "${OTHER_TYPES[@]}" )

  echo "${PREFIXES[@]}"
}

all_prefixes
