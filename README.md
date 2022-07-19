# paper-template

A starter kit for academic papers formatted in arXiv style.

## Setup

### Option 1 (Recommended): via GitHub

Use GitHub to [create a repository from this template](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template).

Since forking a template currently does not fork the submodules, they need to be manually added.
Clone the templated repository for the first time and add submodules via:

```shell
git clone git@github.com:USERNAME/TEMPLATED-REPO.git
git submodule add git@github.com:kourgeorge/arxiv-style.git
```

### Option 2: via command line

Clone this repo via:

```shell
git clone git@github.com:eringrant/paper-template.git --recurse-submodules
```

Create an appropriate GitHub repo for the template, then overwrite origin via:

```shell
git remote rm origin
git remote add origin git@github.com:USERNAME/TEMPLATED-REPO.git
git config master.remote origin
git config master.merge refs/heads/master
```

## Optional: Pre-commit

[`.pre-commit-config.yaml`](/.pre-commit-config.yaml) has been configured to run several autoformatters.
Run the following to install, update, and cache all pre-commit tools:

```shell
pre-commit install && pre-commit run
```

## Usage

### Working with Overleaf

Clone the templated repo as [above](#setup).
Then `git push` and `git pull` should work as usual; the GitHub remote is `origin`.

To additionally work with an Overleaf repository, determine the [Overleaf URL for "raw Git access"](https://www.overleaf.com/learn/how-to/How_do_I_connect_an_Overleaf_project_with_a_repo_on_GitHub%2C_GitLab_or_BitBucket%3F#Add_an_Overleaf_Project_as_a_Git_Remote).
(Do not use Overleaf's process to "Sync" with GitHub.)

From the command line, do:

```shell
git remote add overleaf OVERLEAF_URL
```

Then push and pull from the Overleaf repository to the `master` branch is done via 
```shell
git push overleaf master
``` 
and 
```shell
git pull overleaf master
```

You will need to enter your Overleaf username and password once per session.
NB: The primary branch must be named `master` rather than `main` to work with Overleaf.

### Working with submodules

See the Git [documentation on submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules).

### Integrating changes from the template

To add the `paper-template` repo as an upstream, run: 

```shell
git remote add template git@github.com:eringrant/paper-template.git
```

To fetch and merge changes, run:

```shell
git fetch --all && git merge template/master --allow-unrelated-histories
```
