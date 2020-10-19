# paper-template
A starter kit for academic papers.

## Setup

`git clone git@github.com:eringrant/paper-template.git --recurse-submodules`

### Temporary fix to add submodules

Since forking a template currently does not fork the submodules, they need to be manually added.
After cloning the repo for the first time, run:

`git submodule add git@github.com:kourgeorge/arxiv-style.git`

`git submodule add git@github.com:eringrant/bibs.git`

### Installing depedencies

Some of the scripts in [`bin/`](bin/) have dependencies; to install them, run `bin/install_requirements.sh`.

Several of the hooks in [`hooks/`](hooks/) require [drive](https://github.com/odeke-em/drive#installing).

### Installing pre- and post-commit hooks

The template repo contains some useful scripts for maintaining and sharing TeX documents that can be run as Git hooks before and/or after a commit. 
Default hooks are located at [`hooks/`](hooks/).
To install the hooks, run `bin/setup_hooks.sh`; this script should be rerun any time modifications are made to the hook files.


## Usage

### Working with submodules

See the Git [documentation on submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules).

### Integrating changes from the template

To add the `paper-template` repo as an upstream, run: 

`git remote add template git@github.com:eringrant/paper-template.git`

To fetch and merge changes, run:

`git fetch --all && git merge template/master --allow-unrelated-histories`
