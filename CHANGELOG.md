[petervanderdoes]: https://github.com/petervanderdoes "Peter van der Does on github"
[adutra]: https://github.com/adutra
[aleno]: https://github.com/aleno
[algernon]: https://github.com/algernon
[asheiduk]: https://github.com/asheiduk
[baby-gnu]: https://github.com/baby-gnu
[bloomonkey]: https://github.com/bloomonkey
[bloveridge]:  https://github.com/bloveridge "Ben Loveridge on github"
[craigfowler]: https://github.com/craigfowler
[cyberbob]: https://github.com/cyberbob
[floga]: https://github.com/FloGa
[gvangool]: https://github.com/gvangool
[havvg]: https://github.com/havvg
[jebmeier]: https://github.com/jebmeier
[jeromebaum]: https://github.com/jeromebaum
[jpenney78]: https://github.com/jpenney78
[jsivak]: https://github.com/jsivak
[kperi]: https://github.com/kperi
[mallamanis]: https://github.com/mallamanis
[memleak]: https://github.com/memleak/
[merelyapseudonym]: https://github.com/MerelyAPseudonym
[mykehsd]: https://github.com/mykehsd
[OpherV]: https://github.com/OpherV
[pcragone]: https://github.com/pcragone
[shpoont]: https://github.com/shpoont
[shpoont]: https://github.com/shpoont
[sinbad]: https://github.com/sinbad
[sirn]: https://github.com/sirn

# Changelog

#### 1.11.0
[Peter van der Does][petervanderdoes]
* Bugfix: Problems when using fetch.prune
* Bugfix: Errors when initializing git flow and useconfigonly is set but the name and/or email has not been set.
* Bugfix: Report summary on finish is incorrect.
* Missing push on bugfix finish
* Allow a dirty tree when starting a hotfix/support/release branch if set to do so.  
If the config `gitflow.allowdirty` is set to `true`, allow starting from a dirty tree.
* Bugfix: Error when trying to delete a non-existent remote branch
* Feature: Add rename command to bugfix/hotfix/feature

[Andreas Heiduk][asheiduk]
* git flow * rebase now supports rebase.autoStash flag  
  git rebase can automatically cleanup the working tree. Therefore skip the test when and where appropriate.

#### 1.10.2
[Peter van der Does][petervanderdoes]
* Bugfix: Error finishing a release.

#### 1.10.1
[Peter van der Does][petervanderdoes]
* Bugfix: flag short name (p) already defined

#### 1.10.0
[Peter van der Does][petervanderdoes]
* Update github links.
* Add explanation of AVH.
* Add ability when finishing a release to push or not push the branches and/or tag involved.
* The finishing of a release branch based on a branch other than develop fails with errors.
* Add --push flag for feature finish. This gives the ability to push the base branch after the finish.
* When finishing a release have the ability to fast-forward the master branch, if possible.
  This is controlled by the flag --ff-master.
* Add new flag -T, --tagname to override the tag name when finishing a release or hotfix.
* Allow multiple hotfix branches by setting the config allowmultihotfix to true.  
  The command to set it is  

[Kridsada Thanabulpong][sirn]
* Fix infinite loop during Darwin link resolving.

[Justin Penney][jpenney78]
* Add detection for BusyBox getopt.

#### 1.9.1
[Peter van der Does][petervanderdoes]
* Bugfix: git-flow directories are not set correctly

#### 1.9.0
[Peter van der Does][petervanderdoes]
* Add bugfix command.
* Repositories with spaces in path cause the pre * post hook to fail.
* Error using git flow log.
* Using defaults with init fails with existing repository.
* Allow multiple hotfix branches.
  By setting the config gitflow.multi-hotfix to true, you can have multiple
  hotfix branches. Example: git config --set gitflow.multi-hotfix true
 * Can't delete branch if the base branch is not the develop branch.
 * Add squash and squash-info flag to hotfix finish.
 * Problem when the repository directory has multiple spaces.

[Gergely Nagy][algernon]
* Remove bash code.

[Joe Ebmeier][jebmeier]
* Fix issue in case CDPATH is being used.
  In the case of CDPATH being used, it is possible DOT_GIT_DIR variable
  is incorrect.

[Alexander Norström][aleno]
* Fix issue when a prefix is chosen that doesn't end in a slash

#### 1.8.0
[Peter van der Does][petervanderdoes]
* Add rebase action to release, hotfix and support.
* Shortcut for rebase commands.  
  Introduce the following new command:  
  * git flow rebase

  This command will perform the action on the branch that's currently active.
* Use the base branch when doing a git flow feature diff.  
  When doing a diff on the feature branch use the base branch which this
  feature originated from. It will show the committed changes.
* Problem when certain variables are set before executing git-flow.
  When certain variables are set in the shell environment it causes problems.
* Warning for commands to be deprecated.
  The command "feature checkout/co" will be deprecated per version 2.0.0
  The command "feature pull" will be deprecated per version 2.0.0
* Using fetch flag fails sometimes.
* Hooks and filters are not executed when you are in a subdirectory of the
  repository and the hooks directory is set to the suggested value during
  initialization.

[Craig Fowler][craigfowler]
* 'export' fails in 'gitflow_load_settings()'

[Toni Uebernickel][havvg]
* Add log command

#### 1.7.0
[Peter van der Does][petervanderdoes]
* Refactor the gitflow override flag functions.
* Shortcut for finish, delete, and publish commands.  
  Introduce the following new commands:  
  * git flow finish
  * git flow delete
  * git flow publish

  These commands will perform the action on the branch that's currently active.
* No branch is needed for the following function:  
  * git flow feature publish/finish/delete
  * git flow release publish/finish/delete
  * git flow hotfix publish/finish/delete

* Remove base configuration when deleting a feature/hotfix/release branch.
* Help text for certain commands is wrong.
* Bugfix: Invalid function call.
* Bugfix: No make installer fails
* Support branches are no longer marked as experimental.

[John Sivak][jsivak]
* Fix sanity check for release track command.

[Opher Vishnia][OpherV]
* Fix feature pull.  
  The pull request fails when there's no local branch with the same name as the
  remote branch.

[Leonid Komarovsky][shpoont]
* Option for global hooks and filters directory.  
  This is only for hooks and filters related to git-flow, not the standard git
  hooks.

#### 1.6.1
[Peter van der Does][petervanderdoes]
* Migration of gitflow_config fails for posix sh.
* Error messages when .gitflow_export doesn't exists.

#### 1.6.0
[Peter van der Does][petervanderdoes]
* Add ability to short-circuit the version filters.  
  An exit of 127 will short-circuit the process.
* Output when finishing a branch is wrong.

[Mateusz Kaczmarek][cyberbob]
* Fix sanity check for feature track command.

[Leonid Komarovsky][shpoont]
* Move configuration from ~/.gitflow_export to default git config.
* Move base configuration from it's own configuration file to the default local git config file.
* Improve formatting of the help.

#### 1.5.3
[Peter van der Does][petervanderdoes]
* Bugfix: Error about deleting branch when using squash option.  
  When using the squash option for release/feature finish, the release/feature
  branch is not deleted.

#### 1.5.2
[Peter van der Does][petervanderdoes]
* Add filter for tag message  .
  If a tag message is given, the message can be modified using the filters:
  - filter-flow-hotfix-finish-tag-message
  - filter-flow-release-finish-tag-message
  - filter-flow-release-branch-tag-message
* Bugfix: Typo in documentation.

[Florian Gamböck][floga]
* Bugfix: Fix variable name in hotfix

[Leonid Komarovsky][shpoont]
* git flow rebase will rebase against its base branch instead of develop.
* Add flag --preserve-merges for feature rebase or feature finish.

#### 1.5.1
[Peter van der Does][petervanderdoes]
* Fix some of the flag override environment variable names.

[Joshua P. Tilles][merelyapseudonym]
* Add default flag for flag showcommands.

[Florian Gamböck][floga]
* Bugfix: Fix variable non-zero test  
  Due to missing quotation marks, the -n test won't work properly, leading to
  always returning true and overriding variables with nothing.


#### 1.5.0
[Peter van der Does][petervanderdoes]
* Add the ability to set defaults for flag.  
  You can now set defaults for flags by setting environment variables.
* Add flag no-ff to feature finish.  
  This gives the ability to never fast-forward a merge, even when it's only
  one commit.
* Bugfix: Error in a long flag name for release finish
* Function in gitflow-shFlags refactored to make it faster.
* Add flag --squash-info to release/feature finish.  
  When you use the flag --squash while finishing a release or feature branch,
  the logs don't make it clear which branch you merged. The new flag will add
  an extra comment to the commit message, stating which branch was used for the
  merge.
* Bugfix: The contrib gitflow-installer.sh shows wrong installation instructions.

#### 1.4.2
* Bugfix: Update from upstream for shFlags

#### 1.4.1
* Bugfix: Missed quotation mark

#### 1.4.0
[Peter van der Does][petervanderdoes]
* Remember the base.  
  With the commands feature/hotfix/release start you can give a base from which
  the new branch will be created. Upon finishing this branch it will
  automatically merge the branch back into the base as given during the start.  
  If no base is given the normal functionality will be followed.  
  With the hotfix and release, if a base is given and it's not the
  DEVELOP_BRANCH, the branch will *NOT* be merged back into the $DEVELOP_BRANCH
  upon finishing this branch.
* New config command.  
  git flow config base. This can be used to set and get the base for
  feature/hotfix/release branches so it can be used when finishing these
  branches.
* Get the correct working directory when the git-flow file is a symbolic link.
* Don't check/compare hotfix and base branch when branch is merged already.
* Remove export POSIXLY_CORRECT.  
  Setting this environment variable can mess things up when git-flow is used in
  combination with other shell scripts.
* Update gitflow-shFlags from upstream.  
  Besides other improvements this update eliminates the use of external system
  calls on a majority of systems which in theory leads to a speed increase of
  about 20%.
* Use GNU getopt on BSD systems.  
  BSD getopt doesn't support long options in commands but the GNU getopt does.

[Alexandre Dutra][adutra]
* Git refuses to delete local branch with "-d" if it is tracking a remote one.
* Can't always delete current release/hotfix local branch on finish  
  Situation can occur you are on the local branch the script wants to delete, if
  you are you can't delete that branch. We'll switch to the base branch when
  you are deleting the branch you currently are on.

#### 1.3.1
* Bugix: git flow config list results in error.

#### 1.3.0
[Peter van der Does][petervanderdoes]
* Make name in feature publish optional.  
  Instead of always having to add the branch when doing a git flow feature
  publish, the name should be optional.  
  When a name isn't given, the current branch, if it's a feature branch,
  will be published.
* Add option to select configuration file usage  
  As with the regular git config, git flow init now has the
  option --file, --global, --system and --local. --local is default.
* Add a new command.  
  New command git flow config is added.  
  With this command you can see your current git flow configuration and you
  can also set the options.
* Environment settings for git-flow only.  
  With git you can set environment variables to change behavior, like
  GIT_MERGE_AUTOEDIT for example.  
  You can add these exports to the file ~/.gitflow_export if you only want
  to set the environment variable for git-flow.  
* Bugfix: Missing command hotfix track.  
  The command git flow hotfix track is not implemented.

#### 1.2.1
[Peter van der Does][petervanderdoes]
* Bugfix: The --showcommands was on by default. It should be off by default.

#### 1.2.0
[Peter van der Does][petervanderdoes]
* Improve the help output of the commands.
* Fix problem with init function on BSD systems.
* Add initialize function to git flow version.
* Add parameter --showcommands to all commands.  
  This will show the git commands performed while executing the command. Thanks
  to [Jerome Baum][jeromebaum] for the original implementation.

[Daniel Dehennin][baby-gnu]
* Display where user is on finish.  
  Some commands did not display the branch you are on after the command
  finished.
* When finishing a hotfix/release and it's to be tagged, the tag must not exist.

#### 1.1.0
[Peter van der Does][petervanderdoes]
* Bugfix: feature finish does double merge when using squash option.

* Add the ability to keep/delete local/remote branches on finish.  
  When finishing a release/hotfix/feature you now can keep/delete the
  local/remote release/hotfix/feature branch.

* New command: git flow release branch  
  With this command you can directly release a given branch. There is no need
  to start a new release and finish it. You can not use this command on the
  git-flow branches feature/hotfix/release/support.

* Do not display object fetch summary if flag was not set.  
  Thanks to [Daniel Dehennin][baby-gnu].

* Bugfix: Checking if branch exists will fail for remote branches.

* Make die output consistent for each die case.

* Bugfix: When running git flow init an error message pops up.

* Show correct help for subactions.  
  When requesting help with -h for the subactions, the help would show the
  incorrect command line.

* Support reading the tag message from a file in release/hotfix finish.  
  Add the option -f,--messagefile to release and hotfix finish. Thanks to
  [Steve Streeting][sinbad] for the original coding.

* Bugfix: git_current_branch fails for git prior 1.7.10.  
  git symbolic-ref does not have the --short option prior to version 1.7.10.
  Bug found by [Daniel Dehennin][baby-gnu].

* Clean up code.  
  Remove all porcelain commands.  
  Refactor code.

* Improve the back-merge functionality.  
  Adds an command line option (-b), which the user can utilize if the user
  doesn't want to back-merge but rather merge the release branch into
  develop.

* Add the sub-action delete to sub-commands feature, release and hotfix.  
  The sub-commands feature, release and hotfix now have a new sub-action,
  delete. With that action you can delete the branches, locally and remote.
  The action has two options, -f and -r. With -f you can force the deletion,
  even when the to be deleted branch was not merged yet. With -r the remote
  branch will also be deleted.

[Daniel Dehennin][baby-gnu]
* Bugfix: release/feature/hotfix start -F fails.  
  Usage of positional parameters requires to eval ${FLAGS_ARGV}. The "eval set"
  in function call does not propagate to the caller.

* Accept tags as base for hotfix/release/support start.  
  Commit pointed by tags are reachable with ^0\[1\].

* Check for parameter existence for branch and tag existence helpers.

* Do not finish hotfixes if they have no commits.  
  A hotfix branch must have some commits and be ahead of master.

* Bugfix: When running git flow version an error message pops up.

* Reorder fetch and sanity checks.  
  When a user requests a fetch for git flow {feature|hotfix|support} start, do
  this before some sanity checks to avoid any conflict in branch names
  and/or version.

* Fix flag test in cmd_delete().

[Myke Hines][mykehsd]
* Feature and Release squashing options.  
  This allows a -S option to both feature and releasing finishing actions so
  that developers can squash commits into one large one.

[Peter Ragone][pcragone]
* Add init to git-flow-{feature,release,hotfix,support}.  
  Fixes the relatively minor issue where 'git flow subcommand help'
  gives "Not a gitflow-enabled repo yet".

* Special thanks to the following individual:  
  [Gert Van Gool][gvangool]

#### 1.0-avh
[Peter van der Does][petervanderdoes]

* Remove trailing whitespace.

* Updated from latest develop branch from nvie.  
  Some features were still missing.

* Remove the submodule shFlags.  
  Instead of the submodule we'll just use the file.

* When finishing a release or hotfix, use tag for back-merging if available.  
  When a release or hotfix branch is tagged, the tag is never merged into the
  develop branch, it is preferable to have the tag in the develop branch as
  well, for use with git describe for example.

* Update license info.

* Bugfix: Typo when pulling existing feature from remote.Thanks to [John Harrison][bloomonkey],  [Miltos][mallamanis], [Kostas][kperi] and [memleak][memleak].

* Wrong variable names in the bare-bones.  
  The wrong variable name is set, this can lead to confusing on what's
  passed to the script,

[Steve Streeting][sinbad]
* Fixes the suggested name for the integration branch.  
  When git init -d is executed on a repo with multiple branches, the
  suggested name for the integration branch could possibly be the same name
  that was already selected for the production release branch.  
  If no suggested name is determined the suggested name remains empty which
  leads to all sorts of other problems.

#### 0.4.2-avh1
[Peter van der Does][petervanderdoes]

* Start of the git flow AVH release.

* Adds support for the version filter in the commands `git flow release start`
and `git flow hotfix start`

* Adds support for hooks in various commands.

[Ben Loveridge][bloveridge]

* Fix usage of shFlags on FreeBSD

#### 0.4.2
Release date: not yet

* `git flow init` now detects situations where origin already has gitflow
  branches set up, and behaves accordingly (thanks Emre Berge Ergenekon).

* `git flow feature finish` can now be called without a feature branch
  name(prefix) argument and will finish the current branch, if on any.

* `git flow feature pull` now has a `-r` flag, to support `pull --rebase`
  semantics (thanks Vedang Manerikar).

* Various minor bug fixes related to internal argument passing.

* Improved some documentation.

* Better support for Windows and BSD users.

* Add package installer for the Windows platform.

#### 0.4.1
Release date: **2011/02/04**

* New option `-d` added to `git flow init`, to initialize with defaults without
  asking for input interactively.  Ideal for creating git-flow enabled repos in
  custom scripts.

* The parsing issues related to git-flow feature's flags are now dealt with on
  all known platforms.  (Fixed #54, #62, #86, #97)

* Escape queries for detecting branch/tag names.  (Fixed #91)


#### 0.4
Release date: **2010/10/18**

* The flag parsing issues of git-flow subcommands are solved for most
  platforms.

* `git flow {feature,hotfix,release} finish` now takes a `-k` flag, to keep the
  branch around after finishing.

* `git flow release finish` takes a `-n` flag, to skip tagging.

* For consistency, `git flow {release,hotfix}` now, too, have a `publish` and
  `track` subcommand, just like `feature`.

* Various minor fixes.


#### 0.3
Release date: **2010/07/22**

* New subcommands for `git flow feature`:
  - **checkout**:
    For easily checking out features by their short name.  Even allows
    unique prefixes as arguments (see below).

  - **pull**:
    This subcommand allows you to painlessly work on a feature branch
    together with another peer.  This is especially valuable for doing
    peer reviews of other people's code.  For more detailed info, see the
    [commit log][1].

* Easier addressing of branch names by using name prefixes.
  For example, when using:

    git flow feature finish fo

  this automatically finishes the feature branch `foobar` if that's the only
  feature branch name starting with `fo`.

* No force flag anymore for new feature branches
  `git flow feature start` lost its `-f` (force) flag.  You now don't
  have to be in a clean repo anymore to start a new feature branch. This
  avoids the manual `git stash`, `git flow feature start`, `git stash
  pop` cycle.

* You can use `git-flow` in stand-alone repo's now.
  This means it does not assume you have an `origin` repository.
  (Thanks [Mark][2].)

* No commands fetch from `origin` by default anymore.
  There were some issues related to disabling this flag on some platforms.

* Init guesses branch names you may want to use for `develop` and `master`.

* Added super-easy installation script. (Thanks [Rick][3].)

* Added BSD license.

[1]: http://github.com/nvie/gitflow/commit/f68d405cc3a11e9df3671f567658a6ab6ed8e0a1
[2]: http://github.com/talios
[3]: http://github.com/rickosborne

#####Older versions
No change history is recorded for pre-0.3 releases.

#### Glossary
* RFC: Request For Change. This indicates a new or improved function requested
by one or more users.
