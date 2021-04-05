---
Version: 1.2.0
---

<img align="right" width="100" height="140" src="https://github.com/devlinjunker/template.github.semver/raw/develop/img/logo-small.png" alt="semver template logo">

# Template - Semantic Versioning with Github
<!-- Find More Badges Here: https://shields.io/ -->

[![GitHub License](https://img.shields.io/github/license/devlinjunker/template.github.semver?color=blue)](https://github.com/devlinjunker/template.github.semver/blob/main/LICENSE)  
[![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/devlinjunker/template.github.semver)](https://github.com/devlinjunker/template.github.semver/releases)
[![GitHub last commit](https://img.shields.io/github/last-commit/devlinjunker/template.github.semver)](https://github.com/devlinjunker/template.github.semver/commits/main)  
[![CII Best Practices Summary](https://img.shields.io/cii/summary/4287?label=core-infrastructure)](https://bestpractices.coreinfrastructure.org/en/projects/4287)  
[![GitHub issues](https://img.shields.io/github/issues/devlinjunker/template.github.semver)](https://github.com/devlinjunker/template.github.semver/issues)
[![GitHub priority issues](https://img.shields.io/github/issues/devlinjunker/template.github.semver/-priority?color=red&label=priority%20issues)](https://github.com/devlinjunker/template.github.semver/issues?q=is%3Aopen+is%3Aissue+label%3A-priority)


## Intro
<!-- Quick Description, could match Github repo description or have a little more info-->

This is a template project that uses GitHub Actions and Git Hooks to enforce [Semantic Versioning]. It can be used as a jumping off point to start a programming project with:

- Basic Documentation File Templates 
  - From [Github :100:% Docs Template](https://github.com/devlinjunker/template.github.docs)
- [Core Infrastructure Initiative Criteria] Badge
- Issue and Pull Request Templates
- Git Hooks to enforce readable and meaningful commit messages
- Automated merges and verification for `develop` and `main` branches
- Semi-Automated Semantic Versioned releases based on commit messages using GitHub Actions
- Semi-Automated Patch process using Github Actions
- Standardized Labels and Automatic Labeling of Pull Requests



## Dependencies/Frameworks
<!-- List the frameworks, libraries, and tools the project uses: -->

- Git - to clone and trigger [Git Hooks]
- [Bash] - to run scripts during Git Hooks (for process enforcement)
- GitHub - this template uses [Github Actions] for process enforcement
- [Bulldozer] - Github Application to Auto Squash and Merge feature PRs
- [Git-mkver] - Github Application to Auto Squash and Merge feature PRs

## Quick Setup/Run
<!-- This section should try to quickly explain how to setup the project and start using it (server/app/demo/template) - ideally in list format -->

This is a template repository, it contains documentation on how to use the repo that should be reviewed first. 

### Review Documentation
  - [ ] Review the [Wiki] for an overview of concepts
  - [ ] Review [Github Workflows] in Template (and improve for your process)
  - [ ] Review [Issue Templates] and [Template Configuration File]
  - [ ] Review [Pull Request Template]
  - [ ] Review [Commit Message Template]

## Links
- [Code of Conduct]
- [Contributing Guide]
- [Security Policy]
- [Wiki]
  - [FAQ]
  - [Release Process]
  - [Styleguide]
- External
  - [Semantic Versioning]
  - [Core Infrastructure Initiative Criteria]

### Steps For New Project
Once you have completed reviewing the docs above, follow the instructions below Clone and Use as Template

  - [ ] [Clone or Fork to New Project][Contributing Guide]
    - Delete Tags and Rename Git "remote" if Cloning
  - [ ] Enable [Git Hooks] with symbolic links
  - [ ] Enable [Github Actions]
    - Add a PAT to the forked repo
    - Point wiki sync action at new repo
      - Initialize Wiki to start Syncing README files
  - [ ] Create Labels with the [manage-labels](https://github.com/devlinjunker/template.github.semver/tree/doc/template-steps/.github/workflows#manage-label-action-manage-labelsyaml) GitHub Action in your new repo 
  - [ ] [Enable Bulldozer](https://github.com/apps/prylabs-bulldozer)
    - For Auto `Squash and Merge` PRs
  - [ ] Optional Steps
    - [ ] Setup Branch Protections
    - [ ] Enable [Dependabot] to keep Github Actions up to date

#### Update the Docs
  - [ ] Update README
    - [ ] Reset Version to `0.1-SNAPSHOT`
    - [ ] Update/Remove Badges
      - Project URL
      - CII Project Rank
    - [ ] Update Intro/Purpose
    - [ ] Define Dependencies
    - [ ] Update Setup Instructions
    - [ ] Review/Remove Links
  - [ ] Review/Update [License] File
  - [ ] Update/Restart [Security Policy]
    - Provide private way of reporting vulnerabilities?
  - [ ] Remove/Replace Logo files in `img/` directory
    - If replacing, change logo location in README
  - [ ] Review/Update [Contributing Guide]
  - [ ] Review/Update [Code of Conduct]

#### Before you Code
  - [ ] Create `main` branch off of `develop`
    - Update version in README to 0.0.0 in `main` branch
  - [ ] Create new `feature/*` Branch!
  - [ ] Add Project Build and Configuration Files
  - [ ] Add Code and Push!


## Contributors

- [Devlin Junker (Me!)](mailto:devlinjunker@gmail.com)


[License]: LICENSE
[Security Policy]: SECURITY.md
[Issue Templates]: .github/ISSUE_TEMPLATE/
[Template Configuration File]: .github/ISSUE_TEMPLATE/config.yml
[Pull Request Template]: .github/pull_request_template.md
[Github Workflows]: .github/workflows#github-workflows
[Label Definitions]: .github/labels.yaml
[Label Manager Action]: .github/workflows/manage-labels.yaml
[Auto PR Label Action]: .github/workflows/auto-label.yaml
[Branch-Label Mappings]: .github/pr-branch-labeler.yml
[PR Verify Action]: .github/workflows/verify-merge.yaml
[Git Hooks]: scripts/hooks#git-hook-scripts
[Commit Message Template]: .gitmessage
[Dependabot]: https://github.com/devlinjunker/template.github.semver/security/dependabot
[Code of Conduct]: CODE_OF_CONDUCT.md
[Contributing Guide]: CONTRIBUTING.md
[Security Policy]: SECURITY.md
[Wiki]: https://github.com/devlinjunker/template.github.semver/wiki
[FAQ]: https://github.com/devlinjunker/template.github.semver/wiki/!-FAQ
[Release Process]: https://github.com/devlinjunker/template.github.semver/wiki/Release
[Styleguide]: https://github.com/devlinjunker/template.github.semver/wiki/Styleguide
[Semantic Versioning]: https://semver.org/
[Core Infrastructure Initiative Criteria]: https://bestpractices.coreinfrastructure.org/en/criteria/0
[Git Hooks]: https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks
[Git-mkver]: https://idc101.github.io/git-mkver/
[Bash]: https://tldp.org/LDP/abs/html/
[Github Actions]: https://docs.github.com/en/free-pro-team@latest/actions
[Bulldozer]: https://github.com/palantir/bulldozer