#! /bin/bash

mkdir wiki

# create `.README` file with Table of Contents to link to each
echo "These pages are copied from from .md files in the source code. These are defined in the [collect-wiki.sh script file](https://github.com/devlinjunker/template.github.semver/blob/develop/scripts/workflows/collect-wiki.sh)" > wiki/.README-\(synced\).md
echo "" >> wiki/.README-\(synced\).md
echo "Each page name that is synced will have following name syntax: \`_<file_name>_README\` so it will not visible be in the 'Page List' on the right and will only be available linked below. These pages (including this) **should not be modified** because they will be overwritten on each merge to develop." >> wiki/.README-\(synced\).md
echo "" >> wiki/.README-\(synced\).md
echo "**Docs**" >> wiki/.README-\(synced\).md


OTHER_FILES=("./CONTRIBUTING.md" "./SECURITY.md")

for f in "${OTHER_FILES[@]}"
do
    echo $f;
    # rename each to `_<directory>_README` and place in `wiki/` directory 
    wiki_name=$(echo $f | sed "s/^\.\///" | sed "s/^\.//" | sed "s/^/_/" | sed "s/\//_/g" | sed "s/\.md$/_README.md/")
    cp $f wiki/$wiki_name
    link=$(echo $f | sed "s/^\.\///" | sed "s/^\.//" | sed "s/^/_/" | sed "s/\//_/g" | sed "s/\.md$/_README/")
    echo "- [$f]($link)" >> wiki/.README-\(synced\).md
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
    echo "- [$f]($link)" >> wiki/.README-\(synced\).md
done
