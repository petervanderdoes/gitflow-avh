# git-flow (AVH Edition)

A collection of Git extensions to provide high-level repository operations
for Vincent Driessen's [branching model](http://nvie.com/git-model "original
blog post"). This fork adds functionality not added to the original branch.


## Getting started

For the best introduction to get started with `git flow`, please read Jeff
Kreeftmeijer's blog post:

[http://jeffkreeftmeijer.com/2010/why-arent-you-using-git-flow/](http://jeffkreeftmeijer.com/2010/why-arent-you-using-git-flow/)

Or have a look at one of these screen casts:

* [How to use a scalable Git branching model called git-flow](http://buildamodule.com/video/change-management-and-version-control-deploying-releases-features-and-fixes-with-git-how-to-use-a-scalable-git-branching-model-called-gitflow) (by Build a Module)
* [A short introduction to git-flow](http://vimeo.com/16018419) (by Mark Derricutt)
* [On the path with git-flow](https://vimeo.com/codesherpas/on-the-path-gitflow) (by Dave Bock)

A quick cheatsheet was made by Daniel Kummer:

[http://danielkummer.github.io/git-flow-cheatsheet/](http://danielkummer.github.io/git-flow-cheatsheet/)

## Installing git-flow

See the Wiki for up-to-date [Installation Instructions](https://github.com/petervanderdoes/gitflow-avh/wiki/Installation).


## Integration with your shell

For those who use the [Bash](http://www.gnu.org/software/bash/) or [ZSH](http://www.zsh.org) 
shell, you can use my [fork of git-flow-completion](https://github.com/petervanderdoes/git-flow-completion) 
which includes several additions for git-flow (AVH Edition), or you can use the 
original [git-flow-completion](http://github.com/bobthecow/git-flow-completion) 
project by [bobthecow](http://github.com/bobthecow). Both offer tab-completion 
for git-flow subcommands and branch names with my fork including tab-completion 
for the commands not found in the original git-flow.


## FAQ

* See the [FAQ](http://github.com/petervanderdoes/gitflow-avh/wiki/FAQ) section
of the project Wiki.
* Version Numbering Scheme.  
Starting with version 1.0, the project uses the following scheme:
\<MAJOR\>.\<MINOR\>.\<REVISION\>\
* AVH is the acronym of "A VirtualHome" 

## Please help out

This project is under constant development. Feedback and suggestions are very
welcome and I encourage you to use the [Issues
list](http://github.com/petervanderdoes/gitflow-avh/issues) on Github to provide that
feedback.

Feel free to fork this repository and to commit your additions. For a list of 
all contributors, please see the [AUTHORS](AUTHORS) file.

Any questions, tips, or general discussion can be posted to the Google group:
[http://groups.google.com/group/gitflow-users](http://groups.google.com/group/gitflow-users)
This is the original group set up to support the nvie branch, but I am monitoring
the list as well for any questions related to my version.
When you do post a question on the list please indicate which version you are,
using the complete version number.

## Contributing

Fork the repository.  Then, run:

```shell
git clone -b master git@github.com:<username>/gitflow-avh.git
cd gitflow-avh
```

The `-b master` switch has to be added since the fork operation automatically 
clones the `develop` branch of the official gitflow repository and cloning it 
results in a local repository with just a `develop` branch.

If you do not have gitflow installed yet install it by running `make && make install`.

After that initialize the local gitflow repository with gitflow itself:

```shell
git flow init -d
git flow feature start <your feature>
```

Then, do work and commit your changes.

```shell
git flow feature publish <your feature>
```

When done, open a pull request to your feature branch.

## License terms

git-flow is published under the FreeBSD License, see the
[LICENSE](LICENSE) file. Although the FreeBSD License does not require you to
share any modifications you make to the source code, you are very much
encouraged and invited to contribute back your modifications to the community,
preferably in a Github fork, of course.


## git flow usage

### Initialization

To initialize a new repo with the basic branch structure, use:

    git flow init [-d]

This will then interactively prompt you with some questions on which branches
you would like to use as development and production branches, and how you
would like your prefixes be named. You may simply press Return on any of
those questions to accept the (sane) default suggestions.

The ``-d`` flag will accept all defaults.

![Screencast git flow init](http://i.imgur.com/lFQbY5V.gif)

### Creating feature/release/hotfix/support branches

* To list/start/finish/delete feature branches, use:

        git flow feature
        git flow feature start <name> [<base>]
        git flow feature finish <name>
        git flow feature delete <name>

  For feature branches, the `<base>` arg must be a branch, when omitted it defaults to the develop branch.

* To push/pull a feature branch to the remote repository, use:

        git flow feature publish <name>
        git flow feature track <name>

* To list/start/finish/delete release branches, use:

        git flow release
        git flow release start <release> [<base>]
        git flow release finish <release>
        git flow release delete <release>

  For release branches, the `<base>` arg must be a branch, when omitted it defaults to the develop branch.

* To list/start/finish/delete hotfix branches, use:

        git flow hotfix
        git flow hotfix start <release> [<base>]
        git flow hotfix finish <release>
        git flow hotfix delete <release>

  For hotfix branches, the `<base>` arg must be a branch, when omitted it defaults to the production branch.

* To list/start support branches, use:

        git flow support
        git flow support start <release> <base>

  For support branches, the `<base>` arg must be a branch, when omitted it defaults to the production branch.

### Share features with others

You can easily publish a feature you are working on. The reason can be to allow other programmers to work on it or to access it from another machine. The publish/track feature of gitflow simplify the creation of a remote branch and its tracking.

When you want to publish a feature just use:

    git flow feature publish <name>

or, if you already are into the `feature/<name>` branch, just issue:

    git flow feature publish

Now if you execute `git branch -avv` you will see that your branch `feature/<name>` tracks `[origin/feature/<name>]`. To track the same remote branch in another clone of the same repository use:

    git flow feature track <name>

This will create a local feature `feature/<name>` that tracks the same remote branch as the original one, that is `origin/feature/<name>`.

When one developer (depending on your work flow) finishes working on the feature he or she can issue `git flow feature finish <name>` and this will automatically delete the remote branch. All other developers shall then run:

    git flow feature delete <name>

to get rid of the local feature that tracks a remote branch that no more exist.

### Using Hooks and Filters

For a wide variety of commands hooks or filters can be called before and after
the command.  
The files should be placed in .git/hooks  
In the directory hooks you can find examples of all the hooks available.

## Showing your appreciation

Of course, the best way to show your appreciation for the git-flow tool itself
remains contributing to the community.  If you'd like to show your appreciation
in another way, however, consider donating through PayPal:

[![PayPal][2]][1]

[1]: https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=S85FXJ9EBHAF2&lc=US&item_name=gitflow&item_number=gitflow&no_note=0&cn=Add%20special%20instructions%20to%20the%20seller&no_shipping=1&rm=1&return=https%3a%2f%2fgithub%2ecom%2fpetervanderdoes%2fgitflow&cancel_return=https%3a%2f%2fgithub%2ecom%2fpetervanderdoes%2fgitflow&currency_code=USD&bn=PP%2dDonationsBF%3abtn_donate_SM%2egif%3aNonHosted

[2]: https://www.paypalobjects.com/en_US/i/btn/btn_donate_SM.gif
