#!/bin/sh

cd "$HOME/.terminal-dotfiles"
GIT_TERMINAL_PROMPT=0 git pull -q > /dev/null 2>&1
