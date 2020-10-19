#!/bin/bash
scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
repodir=$(dirname pwd)
hash=`echo -n $(git config --local remote.origin.url) | sha1sum | awk '{print $1}'`
git config --local tex.main main
git config --local tex.hash $hash
for hook in "pre-commit" "post-commit"
do
    cp ${repodir}/hooks/${hook} ${repodir}/.git/hooks/
done
