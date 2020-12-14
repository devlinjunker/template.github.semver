#! /bin/bash

# 1. create `wiki/` directory
mkdir wiki

# 2. find all README files
FILES=$(find . -name *README* | tail -n +2);

WIKI_FILES=();
# 3. rename each `_README_<directory>` and place in `wiki/` directory 
for f in $FILES
do
    wiki_name=$(echo $f | sed "s/^\.\///" | sed "s/^\.//" | sed "s/^/_/" | sed "s/\//_/g")
    WIKI_FILES+=("$wiki_name")
    cp $f wiki/$wiki_name
done

# 4. create `.README` file with Table of Contents to link to each
echo "These pages are copied from from .md files in the source code. These will be defined in a configuration file.\n" > wiki/.README.md
echo "" >> wiki/.README.md
echo "Each page name that is synced will have name: _README_<file_name> so it is not visible in the "Page List" and will instead be linked below. These files should not be modified because they will be overwritten on each merge to develop." >> wiki/.README.md
echo "" >> wiki/.README.md
echo "**Docs**" >> wiki/.README.md
echo ""

for f in ${FILES[@]}
do
## create row with each wiki file copied
    link=$(echo $f | sed "s/^\.\///" | sed "s/^\.//" | sed "s/^/_/" | sed "s/\//_/g" | sed "s/\.md$//")
	echo "- [$f]($link)" >> wiki/.README.md
done