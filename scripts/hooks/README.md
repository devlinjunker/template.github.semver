# Git Hook Scripts

Git Hooks are run by Git during specific actions

## To Add to Workflow
Git hooks need to be added to your local repo for each project,
- Create Symbolic links in `.git/hooks/` for git hook scripts you want to use
  e.g. `cd .git/hooks/; ln -s ../../scripts/hooks/pre-commit.sh pre-commit`
