# Github Workflow Scripts
These scripts are run as a part of Github Workflows, these are custom scripts that are meant to do specific tasks during each action.

## Verify Merge (verify-merge.sh)
  - Prevents Branches with `poc` prefix from merging
  - Prevents Branches where last commit starts with `wip` from merging

## Branch Match (branch-match.sh)
  - Ensures that a $BRANCH parameters matches the $REGEXP parameter

## Collect Wiki (collect-wiki.sh)
  - Find all README files except `README.md` and copy contents to Wiki `.README` section