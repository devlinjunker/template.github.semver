# Github Workflows 

This directory contains files related to Github configurations and actions:
 
  - Github Issue Template Files
  - Github Pull Request Template
  - Action Files and Configurations

## Actions

  ### Manage Label Action (manage-labels.yaml)

  - Creates/Deletes any labels not defined in configuration
  - `labels.yaml` and `workflows/manage-labels.yaml`

  ### Auto Label Action (auto-label.yaml)

  - Adds Labels to PRs based on branch name
  - `pr-branch-labeler.yml` and `workflows/auto-label.yaml`

  ### Verify `develop` Merge Action (develop-verify-merge.yaml)

  - _This is a required action before PRs can be merged_
  - **NOTE:** If you commit to a PR with `wip` commit message, an email will be sent when this action fails
  - Runs the verify-merge.sh script in `scripts/` directory and fails the action if the script does not complete succesfully
    - Prevents mergin branches with name `poc` or where last commit contains `wip` 
  - Verifies that Pull Request Title matches branch prefix

  ### Cut `release-*` Branch Action (release-cut.yaml)
  - Verifies `feature` commits have been added to `develop` since last release cut
  - Creates a `release-` branch with changes in `develop`
  - Creates PR from `release-` branch into `main`

  ### Verify `main` Merge Action (main-verify-merge.yaml)
  - Verifies that Pull Request Title is correct format `release-*` or `hotfix-*`
  - Verifies that Pull Request branch is `release-*` or `hotfix-*` branch

  ### On Merge to `main` Action (main-on-merge.yaml)
  - Syncs README.md files to wiki
  - Triggers after PR merges on `main` branch
  - Creates new Release Tag and Github Release on `main` branch
  - Upmerges `develop` from `main` so the tag is in `develop`s history

  ### Cut `patch-*` Branch Action (patch-cut.yaml)
  - Creates a new `patch-*` branch off of `main`, using the last tag to determine hotfix branch number and next version number




## Ideas
  - [ ] pr mutation testing: https://github.com/tylermurry/github-pr-landmine
  - [x] build docs on merge to `main`
  - [ ] build artifacts on release (merge to `main`)
  - [ ] run build/compile in `develop-verify-merge.yaml` to ensure PR is valid
