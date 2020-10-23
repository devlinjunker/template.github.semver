# Git Hook Scripts

Git Hooks are run by Git during specific actions

## To Add to Workflow
Git hooks need to be added to your local repo for each project,
- Create Symbolic links in `.git/hooks/` for git hook scripts you want to use
  1. `cd .git/hooks/`
  2. `ln -s ../../scripts/hooks/pre-commit.sh pre-commit`
  3. `ln -s ../../scripts/hooks/pre-push.sh pre-push`