# Git Hook Scripts

Git Hooks are run by Git during specific actions. Follow the instructions below to enable:

## To Add to Workflow
Git hooks need to be added to your local repo for each project,
- Create Symbolic links in `.git/hooks/` for git hook scripts you want to use

  1. `cd .git/hooks/`

  2. `ln -s ../../scripts/hooks/pre-commit.sh pre-commit`
     - enforces that the branch name matches style: <prefix>/<feature_name>
     - enforces that branch is not `master` or prefixed with `release`

  3. `ln -s ../../scripts/hooks/commit-msg.sh commit-msg`
     - enforces that first line of commit message matches conventional commit (ish) style `<type>:<description>`

  4. `ln -s ../../scripts/hooks/pre-push.sh pre-push`
     - enforces that the branch name matches style: <prefix>/<feature_name>

  5. `ln -s ../../scripts/hooks/post-commit.sh post-commit`
     - warns when changes are getting large since "last merge"
