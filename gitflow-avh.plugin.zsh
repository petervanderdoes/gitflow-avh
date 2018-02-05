# This allows the gitflow-avh commands to be installed in ZSH using antigen.
# Antigen is a bundle manager. It allows you to enhance the functionality of
# your zsh session by installing bundles and themes easily.

# Antigen documentation:
# http://antigen.sharats.me/
# https://github.com/zsh-users/antigen

# Install gitflow-avh:
# antigen bundle petervanderdoes/gitflow-avh --branch=master
# Bundles installed by antigen are available for use immediately.

# Update gitflow-avh (and all other antigen bundles):
# antigen update

# The antigen command will download the git repository to a folder and then
# execute an enabling script (this file). The complete process for loading the
# code is documented here:
# https://github.com/zsh-users/antigen#notes-on-writing-plugins

# This specific script just adds the project folder to the PATH. This makes all
# commands available in git.
export PATH="${PATH}":`dirname "${0}"`
