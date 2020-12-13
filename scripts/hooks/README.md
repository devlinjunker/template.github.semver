# Git Hook Scripts

Git Hooks are run by Git during specific actions. Follow the instructions below to enable:

## Add Git Hooks

Git hooks need to be added to your local repo for each project,
- Create Symbolic links in `.git/hooks/` for git hook scripts you want to use

  1. `cd .git/hooks/`

  2. `ln -s ../../scripts/hooks/pre-commit.sh pre-commit`
     - enforces that the branch name matches style: <prefix>/<feature_name>
     - enforces that branch is not `main` or `develop` or prefixed with `release`

  3. `ln -s ../../scripts/hooks/commit-msg.sh commit-msg`
     - enforces that first line of commit message matches conventional commit (ish) style `<type>:<description>`

  4. `ln -s ../../scripts/hooks/pre-push.sh pre-push`
     - enforces that the branch name matches style: <prefix>/<feature_name>

  5. `ln -s ../../scripts/hooks/post-commit.sh post-commit`
     - warns when changes are getting large since "last merge"
        - 25 files
        - 400 lines


## Ideas for Hooks

 - Ensure Program Compiles before commit
 - Run tests before commit
   - only if code files touched?
   - only run tests affected by code files modified?
 - Prevent Commit based on Github Branch protections
   - requires reading from github API
     - https://docs.github.com/en/free-pro-team@latest/rest/reference/repos#get-branch-protection
     - use curl and `-u` flag to retrieve branches protected
     - add to config file that hook reads? `./.github/config.yml` `prevent_push: ["<branch_name>"]`
 - Server side hooks
   - on receive, deploy newest changes
