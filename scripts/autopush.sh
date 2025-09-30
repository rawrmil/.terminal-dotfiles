#!/bin/sh

if [ -z "$1" ] || [ -z "$2" ]; then
	echo "Example:"
	echo "./dotfiles-commit.sh zsh 'sexy commit message'"
	exit 0
fi

cd ~/.terminal-dotfiles

git add .
git commit -m "feat($1): $2"
git push
