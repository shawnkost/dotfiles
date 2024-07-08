#! /bin/bash

create_symlinks() {
  # Get the directory in which this script lives.
  script_dir=$(dirname "$(readlink -f "$0")")

  # Get a list of all files in this directory that start with a dot.
  files=$(find "$script_dir" -maxdepth 1 -type f -name ".*")

  # Create a symbolic link to each file in the home directory.
  for file in $files; do
    name=$(basename $file)
    echo "Creating symlink to $name in home directory."
    rm -rf ~/"$name"
    ln -s "$script_dir/$name" ~/"$name"
  done

  # Check if the nvim directory symlink should be created
  if [ ! -L ~/.config/nvim ]; then
    echo "Creating symlink to nvim in .config directory."
    rm -rf ~/.config/nvim # Remove any existing directory or symlink
    ln -s "$script_dir/nvim" ~/.config/nvim
  fi
}

create_symlinks
