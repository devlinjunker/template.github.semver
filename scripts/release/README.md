# Release Scripts
These script files are used during the release actions to perform certain steps or error if conditions aren't met

## git-mkver
- **NOTE:** This is stored in a zip archive so the template will not contain files over 10MB
- Scripts and developers will need to unzip before use
- Binary file from https://github.com/idc101/git-mkver
- helps determine next semantic version using git tags

## Release Cut Check (release-cut-check.sh)
- Verifies that `release-` branch doesn't exist yet
    - checks if release branch already exists with next semantic version from git-mkver
    - if so, this means `develop` has no `feature` commits since the last release version

## Release Prep Upmerge (release-prep-upmerge.sh)
- Performs upmerge from branch passed in ($1) into `develop` after release tag is created

## Update Versions (update-versions.sh)
- Updates the version information in all files in the repo (for now this is just README.md)

## Patch Cut Check (patch-cut-check.sh)
- Verifies that we are cutting patch branch from `release-*` or `main`