#!/bin/bash
# Set up hooks for this TeX paper repo.
scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
repodir=$(dirname $scriptdir)
hash=`echo -n $(git config --local remote.origin.url) | shasum | awk '{print $1}'`

# Point to a Google Drive folder mounted with https://github.com/odeke-em/drive#initializing .
gdrivedir="${HOME}/gdrive/Paper Drafts/"

git config --local tex.main "main"
git config --local tex.hash "$hash"
git config --local tex.gdrivedir "$gdrivedir"

for hook in "pre-commit" "post-commit"
do
    cp ${repodir}/hooks/${hook} ${repodir}/.git/hooks/
done
