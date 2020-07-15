# Template.Github

_Put some badges up here!_

## Intro

This is a template project with all of the basic files and directory structure for a useful Github Repo :100:%

## Dependencies/Frameworks

- None yet, this is just a template!

## Development

Clone this repo and  then remove the Git repos "remote" configuration for the 

### Environment Setup

None needed for these files, once you are using a specific language and framework you should explain how to set that up here.

### Git Workflow / Branching Strategy

I'm going to enforce my own strategy in this file so that my projects all use the same workflow. Feel free to use/modify/change this for your project.

It is good practice to create a Git commit on the current branch at the end of each night that you are coding. If you forget, the next best practice is to create a commit of the old changes as the first thing whenever you begin to code on the project again. This way you can easily revert or stash and be back to the beginning of your current coding session.

Each feature that is created should be in it's own `feature-` branch in the git repo. Once the changes in the feature branch are completed and tested, you should create a Pull Request (PR) against the `master` branch. This repo should use a Pull Request Template to fill out and help explain the feature and changes you are making. Once this PR is approved, you can merge to the `master` branch.

```
 --o--o--o`master-HEAD`                                  --o--o------o`master-HEAD`
    \                         -> after merge to master      \       /
     o--o--o`feature-XXX-HEAD`                               o--o--o
```

If this is a larger feature (> 1 week of real time) or you think it will be useful to document each step/get feedback on smaller pieces, then it is best to create a new branch (`branch-1`) off of the feature branch for the smaller pieces of code. After a section of the larger feature is completed, or if you think feedback would be useful, you can create a Pull Request (PR) on Github from the `branch-1` to the `feature-*` branch. 

```
 --o--o--o`master-HEAD`                                           --o--o--o`master-HEAD`                                          --o--o--o-------o`master-HEAD`
    \                                                                \                                                               \           /
     o--o--o`feature-XXX-HEAD`    -> after merge to feature           o--o------o`feature-XXX-HEAD`     -> after merge to master      o--o------o`feature-XXX-HEAD`
         \                                                                \    /                                                          \    /
          o--o`branch-1-HEAD`                                              o--o                                                            o--o
```

**Note:** After you create the PR, any new changes that are unrelated to the code changes in the PR should be in a new branch (`branch-2`) that starts at the end of `branch-2`. 

```
 --o--o--o`master-HEAD`                                           --o--o--o`master-HEAD`                                            --o--o--o`master-HEAD`
    \                                                                \                                                                 \           
     o--o--o`feature-XXX-HEAD`    -> after 1st merge to feature       o--o------o`feature-XXX-HEAD`  -> after 2nd merge to feature      o--o------o----o`feature-XXX-HEAD`
         \                                                                \    /                                                          \    /      /
          o--o`branch-1-HEAD`                                              o--o                                                            o--o      /
              \                                                                \                                                               \    /
               o`branch-2-HEAD`                                                 o--o`branch-2-HEAD`                                             o--o
```

## Links

- None yet!
- [Wiki]()?
- [Docs]()?
- [Contribute]() -- Move Git Branching
- [Notes/Ideas]()
- Architecture Doc

