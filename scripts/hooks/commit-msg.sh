#! /bin/bash
# Script to verify that commit message matches conventions


COMMIT_MSG=`cat $1 | sed -n "/^[^#]/p"`

COMMIT_WORD_COUNT=`cat $1 | sed -n "/^[^#]/p" | wc -w | sed "s/\w//"`
COMMIT_LINE_COUNT=`cat $1 | sed -n "/^[^#]/p" | wc -l | sed "s/\w//"`

echo $COMMIT_WORD_COUNT
echo $COMMIT_LINE_COUNT
