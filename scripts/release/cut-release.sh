#! /bin/bash
# This script will contain the commands that create a new release cut
# 1. Create Release Branch 
# 2. Increment version in README on master branch (0.8-SNAPSHOT -> 0.9-SNAPSHOT)
# 3. Git Tag
# 4. Github Release?


./git-mkver next --format "{Major}.{Minor}.{Patch}"
