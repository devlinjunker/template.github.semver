#! /bin/bash

mkdir wiki

# create `.README` file with Table of Contents to link to each
echo "These pages are copied from from .md files in the source code. These will be defined in a configuration file." > wiki/.README.md
echo "" >> wiki/.README.md
echo "Each page name that is synced will have name: _README_<file_name> so it is not visible in the 'Page List' and will instead be linked below. These files **should not be modified** because they will be overwritten on each merge to develop." >> wiki/.README.md
echo "" >> wiki/.README.md
echo "**Docs**" >> wiki/.README.md


OTHER_FILES=("./CONTRIBUTING.md" "./SECURITY.md")

for f in "${OTHER_FILES[@]}"
do
    echo $f;
    # rename each to `_<directory>_README` and place in `wiki/` directory 
    wiki_name=$(echo $f | sed "s/^\.\///" | sed "s/^\.//" | sed "s/^/_/" | sed "s/\//_/g" | sed "s/\.md$/_README.md/")
    cp $f wiki/$wiki_name
    link=$(echo $f | sed "s/^\.\///" | sed "s/^\.//" | sed "s/^/_/" | sed "s/\//_/g" | sed "s/\.md$/_README/")
    echo "- [$f]($link)" >> wiki/.README.md
done

# find files in repo with README in name
README_FILES=$( find . -name *README* );

for f in ${README_FILES[@]}
do
    if [ "$f" = "./README.md" ]; then continue; fi
    echo $f;
    # rename each to `_<directory>_README` and place in `wiki/` directory 
    wiki_name=$(echo $f | sed "s/^\.\///" | sed "s/^\.//" | sed "s/^/_/" | sed "s/\//_/g")
    cp $f wiki/$wiki_name

    link=$(echo $f | sed "s/^\.\///" | sed "s/^\.//" | sed "s/^/_/" | sed "s/\//_/g" | sed "s/\.md$//")
    echo "- [$f]($link)" >> wiki/.README.md
done
