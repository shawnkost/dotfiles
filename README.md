# dotfiles

A repo to store all of my dot files to easily access between computer systems. [Chezmoi](https://www.chezmoi.io/) is being used to store the dot files.

## Installing 

Refer to the quick start guide [here](https://www.chezmoi.io/install/) on how to install chezmoi and initialize it.

## Common Commands

`chezmoi add $FILE` adds $FILE from your home directory to the source directory.

`chezmoi edit $FILE` opens your editor with the file in the source directory that corresponds to $FILE.

`chezmoi status` gives a quick summary of what files would change if you ran chezmoi apply.

`chezmoi diff` shows the changes that chezmoi apply would make to your home directory.

`chezmoi apply` updates your dotfiles from the source directory.

`chezmoi edit` --apply $FILE is like chezmoi edit $FILE but also runs chezmoi apply $FILE afterwards.

`chezmoi cd` opens a subshell in the source directory.
