#!/bin/zsh

BREW=$(which brew)
UNLINK="$BREW unlink $1"
LINK="$BREW link --overwrite $1"
SOURCE="source ${HOME}/.zshrc";
eval {$UNLINK} && eval {$LINK} && eval {$SOURCE}
