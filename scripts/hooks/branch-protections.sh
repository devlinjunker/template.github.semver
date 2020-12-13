#! /bin/bash
# Script to check github branch protections and prevent commits to protected branches

BLOCKED_BRANCH=( main, develop )
BLOCKED_PREFIX=( release )

BRANCH=`git rev-parse --abbrev-ref HEAD`

github() {

  local REMOTE=`git status -sb | sed -n "/##/p" | sed "s/.*\.\.\.//" | sed "s/\/.*//"`

  if [[ ! $REMOTE =~ "##" ]]; then
    local URL=`git config --get remote."$REMOTE".url`
    
    if [[  $URL =~ "github.com" ]]; then
      local SPLIT=(`echo $URL | sed "s/.*://" | sed  "s/\.git$//" | sed "s/\// /" `)
      local OWNER=${SPLIT[0]}
      local REPO=${SPLIT[1]}

      #echo $OWNER
      #echo $REPO
    else
      #echo "not a github remote"
      return
    fi
  else
    #echo "no upstream branch"
    return
  fi

  # TODO: Set github token somewhere so we can get protections and check if we're allowed to push to github
  #AUTH="token "
  # curl -H "Accept: application/vnd.github.v3+json" -H "Authorization: $AUTH" "https://api.github.com/repos/$OWNER/$REPO/branches/$BRANCH/protection"

}

main() {

  # check github branch protections
  github
  
  # compare against branch name/prefixes defined in here
  if [[ "${BLOCKED_BRANCH[@]}" =~ $BRANCH ]]; then
    return -1
  fi 
  for PREFIX in "${BLOCKED_PREFIX[@]}"; do
    if [[ $BRANCH == $PREFIX* ]]; then
      return -1
    fi
  done
   
}

main


