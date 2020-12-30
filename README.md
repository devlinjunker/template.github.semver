---
Version: 1.1-SNAPSHOT
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

- Basic Documentation File Templates (from [Github :100:% Docs Template](https://github.com/devlinjunker/template.github.docs) )
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

## Quick Setup/Run
<!-- This section should try to quickly explain how to setup the project and start using it (server/app/demo/template) - ideally in list format -->
 - [ ] Review the [Wiki] - overview of the concepts
 - [ ] [Clone or Template to New Project][Contributing Guide]
 - [ ] Review/Update [License] File
 - [ ] Review/Update [Security Policy]
   - Provide private way of reporting vulnerabilities?
 - [ ] Remove/Replace Logo files in `img/` directory
   - If replacing, change logo location in README
 - [ ] Update this README and Links with project specific details
   - Reset Version Information
   - Update/Remove Badges
     - Project URL
     - CII Project Rank
   - Update Intro
   - Define Dependencies
   - Update Setup Instructions
   - Review/Remove Links
     - Review [Security Policy]
     - Update [Contributing Guide]
     - Review/Update [Code of Conduct]
 - [ ] Review [Github Workflows] in Template (and improve for your process)
 - [ ] Enable [Git Hooks] and set (Optional)  [Commit Message Template]
 - [ ] Modify [Issue Templates] and [Template Configuration File]
 - [ ] (Optional) Modify [Pull Request Template]
 - [ ] (Optional) Enable [Dependabot] to keep Github Actions up to date
 - [ ] Add Project Build and Configuration Files
 - Start Coding!

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
[Dependabot]: security/dependabot
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
[Bash]: https://tldp.org/LDP/abs/html/
[Github Actions]: https://docs.github.com/en/free-pro-team@latest/actions
[Bulldozer]: https://github.com/palantir/bulldozer