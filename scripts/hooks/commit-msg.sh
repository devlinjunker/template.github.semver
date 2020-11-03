#! /bin/bash
# Script to verify that commit message matches conventions

COMMIT_WORD_COUNT=`cat $1 | sed -n "/^[^#]/p" | wc -w | sed "s/\w//"`
COMMIT_LINE_COUNT=`cat $1 | sed -n "/^[^#]/p" | wc -l | sed "s/\w//"`
# echo $COMMIT_WORD_COUNT
# echo $COMMIT_LINE_COUNT


MSG_PREFIXES=( 'wip' )


COMMIT_MSG=`cat $1 | sed -n "/^[^#]/p"`
FIRST_LINE=`echo $COMMIT_MSG | sed -n "/[^\w]*$/p" | sed "s/^ *//" | sed "s/\n//" | head`

DIR=`dirname "$0"`


# if in hook, then prep PATH to find in repo `scripts/hooks/` dir 
if [[ $DIR =~ ".git" ]]; then
  DIR+="/../../scripts/hooks"
fi


# get prefix options from shared prefix list file
PREFIXES=`$DIR/prefix-list.sh`


# create regexp for first line of commit message:      <prefix>(optional !):<description>
regexp="^($(echo "${PREFIXES[@]} ${MSG_PREFIXES[@]}" | sed "s/ /|/g"))(\([\w\s]*\))?\!?\:[A-Za-z0-9\._\-\s]*"


# check that first line of message matches regexp
if [[ ! $FIRST_LINE =~ $regexp ]]; then
  exit -1
fi

