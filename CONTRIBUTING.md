# How to Contribute!

Thanks for helping out!


## Reporting Issues
The best way to [report an issue is through Github](https://github.com/devlinjunker/template.github.semver/issues/new/choose). The owners of the repo should get an email notification whenever a new issue is created.


## Development 
<!-- This section details the steps to setup the project for development -->

### Environment Setup and Tools
You will need to install Git and create an account on Github to take advantage of all of the features of this template. This template also uses scripts that expect Bash to be installed at `/bin/bash`.

#### Create your own Project from this Template
There are multiple ways to use this template as a starting point for your own project. The **best way to use this is by cloning the repo to your GitHub account and creating your project with the template feature provided by Github**:

<img width="1130" alt="template" src="https://user-images.githubusercontent.com/1504590/95393957-55b31c80-08b0-11eb-9126-55d8105881f4.png">

The **second best way to start a new project** is to either clone this repo using Git and point at your own remote:

```
git clone --depth 1 -b main https://github.com/devlinjunker/template.github.semver.git;
mv template.github.semver <new_server_project_name>;
cd <new_server_project_name>;
git remote remove origin;
git remote add origin <new_remote_addr>;
git push --set-upstream origin main;
git checkout -b develop;
git push --set-upstream origin develop;
```

Or, **you can download an archive of the repository** contents using the Github "Download" link and extract this to access all of the files and create a new Git project with them:

<img width="946" alt="zip" src="https://user-images.githubusercontent.com/1504590/95393961-56e44980-08b0-11eb-95a3-660860e83c41.png">

After Downloading:
```
unzip template.github.semver-main.zip;
mv template.github.semver-main <new_server_project_name>;
cd <new_server_project_name>;
git init;
git remote add origin <remote_addr>;
git add *;
git commit;
git push;
git checkout -b develop;
git push --set-upstream origin develop
```

Once you have a framework and development environment chosen for your project, you should update your repo with specifics about how to install the tools and dependencies needed to run/debug/develop the application (See README for checklist).


#### Update a Project or add to existing Project
The steps **to update a Project that was created using this template**, or to **add these features to an existing project** are the same. In the projects root directory:
```
git checkout main;
git remote add template https://github.com/devlinjunker/template.github.semver.git;
git fetch template;
git checkout template/main ./;
git reset HEAD * ./;
git status; # to see new files and changed files
<compare diff with `origin/main` to see updates>
git add *;
git commit;
git push;
```


### Folder Structure
Break down how each folder is used in the repo and how different code file types should be organized.

```
- .github/
|-- ISSUE_TEMPLATE/  
|---- (Github Issue Template Files)
|-- workflows/
|---- (Github workflow .yaml files)
|-- (other github specific files)
- img/
|-- (project image files)
- scripts/
|-- hooks/
|---- (Git Hooks Scripts)
|-- release/
|---- (Script files that help with creating releases)
|-- workflows/
|---- (Github workflow Scripts)
- (project config files and READMEs)
```


### Scripts
Git hooks and Github workflows/actions are extremely useful for streamlining processes and typical developer actions, or verifying that standards are met. This section documents how they should be used in this project.


#### Hooks
Git Hooks are scripts that can be run during certain parts of the Git process (after committing, before pushing, etc). Git Hooks can be added in the `.git/hooks` directory (I prefer to create symbolic link to another place in the repo so they can be committed for every developer. e.g. store the hook scripts in `./hooks`, after git repo set up use `ln -s ./hooks/ ./.git/hooks`).

To create a hook, you add a script file (or symbolic link to one) in the `.git/hooks/` directory with the name of the hook from [this list](https://git-scm.com/docs/githooks#_hooks). (e.g. to run a script before a commit is saved -- to verify the contents of the commit, verify the app builds, etc -- you would create `./.git/hooks/pre-commit`).

[Review Hooks in this Repo](https://github.com/devlinjunker/template.github.semver/blob/main/scripts/hooks#git-hook-scripts)

#### Workflows
[GitHub Workflows/Actions](https://docs.github.com/en/actions/configuring-and-managing-workflows/configuring-a-workflow) are commands that can be run on GitHub servers, these are added in `.github/workflows` and defined with YAML files that express when the workflow should run and the steps it should take. Github can enforce that these workflows are successful before Pull Requests are merged via the [Branch Settings Page](https://github.com/devlinjunker/template.github.semver/settings/branches), it can also trigger them after users perform certain actions or they can be manually triggered to run.

[Review Workflows in this Repo](https://github.com/devlinjunker/template.github.semver/blob/main/.github/workflows#github-workflows)


#### Other Scripts
Shell scripts are short programs that are created to help with small tasks. They can be a part of a workflow or hook, or they can help with  deployment/installation and running the final software product.  

[Review Scripts in this Repo](https://github.com/devlinjunker/template.github.semver/scripts/)


#### Auto-Merge with Bulldozer
This repo has a `.bulldozer.yml` file that is used to customize how to automatically merge pull requests into the `develop` branch. This is done with the [Bulldozer Github App](https://github.com/palantir/bulldozer). 

The default requirements to auto-merge are:
 1. all required status checks passing
 2. a comment matching: `!merge` or `! merge`



### Best Practices

#### Branching and Pull Requests
View the strategies outlined in our Wiki for [best practices for branching and merging new features](https://github.com/devlinjunker/template.github.semver/wiki/Branching-&-Code-Reviews), as well as steps to take when reviewing other submissions. The Git Hooks and Actions in this template are designed to encourage following these best strategies.


#### Security
Review the [Security Policy](https://github.com/devlinjunker/template.github.semver/blob/main/SECURITY.md) for an idea of how to submit bug reports and a review of security design principles to follow when contributing. 


#### Style Guide
Once you start your project, you should update the style guide here or [link to a Wiki page](https://github.com/devlinjunker/template.github.semver/wiki/Styleguide) from here.

Some ideas of things to include in your styleguide include:
 - Code Formating and (linting) tools used to ensure the style is met
 - Organization of Files
 - Best practices for designing new features


#### Testing
This template doesn't include any tests yet (although we could add them...). Once you start using this for your own project though, you should include any testing details and requirements here.

Ideas to consider for testing:
 - unit tests
 - integration tess
 - e2e tests
 - automation tests
 - contract tests
 - mutation tests


#### Release 
This template uses [Semantic Versioning](https://github.com/devlinjunker/template.github.semver/wiki/Release) to label each iteration of the final project. This ensures a consitent and meaningful format for numbering releases. 

Release branches are cut from the `develop` branch and merged into `main` after review. They are then tagged and marked as a release with a changelog (generated from the commit messages) of the changes made since the last release. 

This process can be improved upon in projects that use this template by:
 - Building and Adding code Artifacts to releases
 - Including Github Milestones
