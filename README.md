---
Version: 0.12-SNAPSHOT
---

<img align="right" width="100" height="140" src="https://github.com/devlinjunker/template.github/raw/doc/update-wiki-notes/img/logo-small.png">

# Template - Semantic Versioning with Github Workflows


[![GitHub License](https://img.shields.io/github/license/devlinjunker/template.github.semver?color=blue)](https://github.com/devlinjunker/template.github.semver/blob/main/LICENSE)  
[![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/devlinjunker/template.github.semver)](https://github.com/devlinjunker/template.github.semver/releases)
[![GitHub last commit](https://img.shields.io/github/last-commit/devlinjunker/template.github.semver)](https://github.com/devlinjunker/template.github.semver/commits/main)  
[![CII Best Practices Summary](https://img.shields.io/cii/summary/4287?label=core-infrastructure)](https://bestpractices.coreinfrastructure.org/en/projects/4287)  
[![GitHub issues](https://img.shields.io/github/issues/devlinjunker/template.github.semver)](https://github.com/devlinjunker/template.github.semver/issues)
[![GitHub priority issues](https://img.shields.io/github/issues/devlinjunker/template.github.semver/-priority?color=red&label=priority%20issues)](https://github.com/devlinjunker/template.github.semver/issues?q=is%3Aopen+is%3Aissue+label%3A-priority)

_[Find More Badges Here!](https://shields.io/)_

## Intro

This is a template project that uses Github Actions and Git Hooks to enforce [Semantic Versioning].

This template can be used as a jumping off point to start a programming project that uses Semantic Versioning and provides automation to ensure that developers create readable commit messages with meaningful releases and changelogs.

## Dependencies/Frameworks
_List the frameworks, libraries, and tools the project uses:_

- Git - to clone and use Githooks for process enforcement
- GitHub - this template is based on the GitHub completion stats and has a `.github/` directory

## Quick Setup/Run

_This section should try to quickly explain how to setup the project and start using it (server/app/demo/template) - ideally in list format_
 - [ ] Review [License] File
 - [ ] Review and Update [Security Policy]
   - Provide private way of reporting vulnerabilities?
 - [ ] Remove/Replace Logo files in `img/` directory
   - If replacing, change logo location in README
 - [ ] Update this README and Links with project specific details
   - Reset Version Information
   - Update/Remove Badges
   - Define Dependencies
   - Update Setup Instructions
   - Update Contributing Info
   - Update Code of Conduct
 - [ ] Review the [Wiki] - overview of the concepts
 - [ ] Review [Github Workflows] in Template (and improve foryour process)
 - [ ] Enable [Git Hooks] and set (Optional)  [Commit Message Template]
 - [ ] Modify [Issue Templates] and [Template Configuration File]
 - [ ] (Optional) Modify [Pull Request Template]
 - [ ] Add Project Build and Configuration Files
 - Start Coding!

## Links

- [Code of Conduct]
- [Contribute]
- [Wiki]
  - [FAQ]
  - [Semantic Versioning]
  - [Code Analysis]


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
[Code of Conduct]: CODE_OF_CONDUCT.md
[Contribute]: CONTRIBUTING.md
[Wiki]: https://github.com/devlinjunker/template.github/wiki
[FAQ]: https://github.com/devlinjunker/template.github/wiki/!-FAQ
[Semantic Versioning]: https://github.com/devlinjunker/template.github/wiki/Semantic-Versioning-&-Release
[Code Analysis]: https://github.com/devlinjunker/template.github/wiki/Code-Analysis
