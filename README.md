# paper
A starter kit for academic papers.

## Cloning the repository

`git clone git@github.com:eringrant/paper.git --recurse-submodules`

## Working with submodules

See the Git [documentation on submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules).

### Temporary fix to add submodules

Since forking a template currently does not fork the submodules, after cloning, run:

`git submodule add git@github.com:kourgeorge/arxiv-style.git`

`git submodule add git@github.com:eringrant/bibs.git`

## Integrating changes from the template

To add the `paper` repo as an upstream, run: 

`git remote add template git@github.com:eringrant/paper.git`

To fetch and merge changes, run:

`git fetch --all && git merge template/master --allow-unrelated-histories`
