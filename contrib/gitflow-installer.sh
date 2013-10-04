#!/bin/bash

# git-flow make-less installer for *nix systems, by Rick Osborne
# Based on the git-flow core Makefile:
# http://github.com/petervanderdoes/gitflow/blob/master/Makefile

# Licensed under the same restrictions as git-flow:
# http://github.com/petervanderdoes/gitflow/blob/develop/LICENSE



# Does this need to be smarter for each host OS?
if [ -z "$PREFIX" ] ; then
    PREFIX="/usr/local"
fi

if [ -z "$REPO_HOME" ] ; then
    REPO_HOME="http://github.com/petervanderdoes/gitflow.git"
fi

if [ -z "$REPO_BRANCH_NAME" ] ; then
    REPO_BRANCH_NAME="master"
fi

BINDIR="$PREFIX/bin"
BAREBONEHOOKSDIR="$PREFIX/share/gitflow/barebone-hooks"

INSTALL_EXEC_FILES="git-flow"
INSTALL_SCRIPT_FILES="git-flow-init git-flow-feature git-flow-hotfix git-flow-release git-flow-support git-flow-version gitflow-common gitflow-shFlags git-flow-config"

usage() {
    echo "Usage: [environment] gitflow-installer.sh <install [stable|develop]|uninstall>"
    echo "Environment:"
    echo "   PREFIX=$PREFIX"
    echo "   REPO_HOME=$REPO_HOME"
    echo "   REPO_BRANCH_NAME=$REPO_BRANCH_NAME"
    exit 1
}


echo ""
echo "### git-flow no-make installer ###"
echo ""

case "$1" in
    help)
        usage
        exit
        ;;
    uninstall)
        echo "Uninstalling git-flow from $PREFIX"
        echo "Deleting files and folders.."
        echo ""

        if [ -d "$BINDIR" ] ; then
            for script_file in $INSTALL_SCRIPT_FILES $INSTALL_EXEC_FILES; do
                rm -vf "$BINDIR/$script_file"
            done
        else
            echo "The '$BINDIR' directory was not found."
        fi

        if [ -d "$BAREBONEHOOKSDIR" ] ; then
            rm -rvf "$BAREBONEHOOKSDIR"
        else
            echo "The '$BAREBONEHOOKSDIR' directory was not found."
        fi

        echo ""
        echo "Uninstalled git-flow"
        exit
        ;;
    install)
        case "$2" in
            stable)
                REPO_BRANCH_NAME="master"
                ;;
            develop)
                REPO_BRANCH_NAME="develop"
                ;;
            "")
                # default is defined already
                ;;
            *)
                usage
                exit
                ;;
        esac

        echo "Installing git-flow to $BINDIR"
        
        echo ""
        echo "Cloning $REPO_HOME (branch '$REPO_BRANCH_NAME')"

        CLONE_TMP_DIR=`mktemp -d -t gitflow-install`
        git clone --quiet "$REPO_HOME" "$CLONE_TMP_DIR"
        cd "$CLONE_TMP_DIR"
        git checkout --quiet "$REPO_BRANCH_NAME"

        echo ""
        echo "Creating target directories"
        install -v -d -m 0755 "$BINDIR"
        install -v -d -m 0755 "$BAREBONEHOOKSDIR"
      
        echo ""
        echo "Installing files"
        for exec_file in $INSTALL_EXEC_FILES; do
            install -v -m 0755 "$CLONE_TMP_DIR/$exec_file" "$BINDIR"
        done
        for script_file in $INSTALL_SCRIPT_FILES; do
            install -v -m 0644 "$CLONE_TMP_DIR/$script_file" "$BINDIR"
        done
        for hook_file in $CLONE_TMP_DIR/hooks/*; do
            install -v -m 0644 "$hook_file"  "$BAREBONEHOOKSDIR"
        done

        # Cleanup 
        echo ""
        echo "Cleaning up"
        rm -rf "$CLONE_TMP_DIR"

        # Done
        echo ""
        echo "Installed git-flow"

        exit
        ;;
    *)
        usage
        exit
        ;;
esac
