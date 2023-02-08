#!/bin/zsh

# this file is initialized after the container is built
# su vscode -c 'xxx' 2>&1
set -ex

# required to run this at startup
source "${NXE_SCRIPTS}/init-postCreate-base.sh" && echo "Sourced ${NXE_SCRIPTS}/init-postCreate-base.sh"
#source $NXE_WS/.devcontainer/testCreate.zsh

# optional things
#source "${NXE_SCRIPTS}/nxe-post-node-packages.zsh" # node stuff

# Notifiy that we're done this script
echo "NXE Done: postCreateCommand"
