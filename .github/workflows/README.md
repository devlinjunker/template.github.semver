# Github Workflows 

This directory contains files related to Github configurations and actions:
 
  - Github Issue Template Files
  - Github Pull Request Template
  - Action Files and Configurations

## Actions

  ### Manage Label Action

  - Creates/Deletes any labels not defined in configuration
  - `labels.yaml` and `workflows/manage-labels.yaml`

  ### Auto Label Action

  - Adds Labels to PRs based on branch name
  - `pr-branch-labeler.yml` and `workflows/auto-label.yaml`

  ### Verify Merge Action

  - _This is a required action before PRs can be merged_
  - Runs the verify-merge script in `scripts/` directory and fails the action if the script does not complete succesfully
    - Prevents mergin branches with name `poc` or where last commit contains `wip` 


## Ideas
  - [ ] pr mutation testing: https://github.com/tylermurry/github-pr-landmine
  - [ ] build artifact/docs on merge to master
  - [ ] run build/compile in verify-merge to ensure PR is valid
