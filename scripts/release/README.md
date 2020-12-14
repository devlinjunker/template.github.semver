# Release Scripts
These script files are used during the release actions to perform certain steps or error if conditions aren't met

## git-mkver
 - Binary file from https://github.com/idc101/git-mkver
 - helps determine next semantic version using git tags

## Release Cut Check
 - Verifies that `release-` branch doesn't exist yet
    - checks if release branch already exists with next semantic version from git-mkver
    - if so, this means `develop` has no `feature` commits since the last release version

## Release Prep Upmerge
 - Performs upmerge from `main` into `develop` after release tag is created

## Update Versions
 - Updates the version information in all files in the repo (for now this is just README.md)