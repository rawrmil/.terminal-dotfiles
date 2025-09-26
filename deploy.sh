#!/bin/sh

hascmd() {
	if [ -z $(which "$1") ]; then
		echo "[ ERR ] Command '$1' absent."
		return 1
	fi
	echo "[ OK  ] Command '$1' present"
	return 0
}

DEPLOY_ACTION=$1

sym() {
	src=$1
	dst_dir=$2
	dst_sym=$3
	if [ "$DEPLOY_ACTION" = "clean" ]; then
		if [ ! -f "$dst_dir/$dst_sym" ]; then
			echo "[ ERR ] symlink '$dst_dir/$dst_sym' does not exists."
			return 1;
		fi
		echo "[ OK  ] unlinking '$1' -> '$dst_dir/$dst_sym'"
		rm "$dst_dir/$dst_sym"
		return 0;
	else
		if [ -f "$dst_dir/$dst_sym" ]; then
			echo "[ OK  ] symlink '$dst_dir/$dst_sym' already exists"
			return 1;
		fi
		echo "[ OK  ] linking '$1' -> '$dst_dir/$dst_sym'"
		mkdir -p "$dst_dir"
		ln -s "$src" "$dst_dir/$dst_sym"
		return 0;
	fi
	return 1;
}

DFDIR=$HOME/.terminal-dotfiles

hascmd "zsh"  && sym "$DFDIR/zshrc" "$HOME" ".zshrc"
hascmd "nvim" && sym "$DFDIR/nvim-init.lua" "$HOME/.config/nvim" "init.lua"
