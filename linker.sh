#!/bin/bash
# Links everything in home/ to ~/, does sanity checks.
# By Simon Eskildsen (github.com/Sirupsen)

function symlink {
  ln -nsf $1 $2
}

function linkFiles {
  for file in home/.[^.]*; do
    path="$(pwd)/$file"
    base=$(basename $file)
    target="$HOME/$(basename $file)"

    if [[ -h $target && ($(readlink $target) == $path)]]; then
      echo -e "\x1B[90m~/$base is symlinked to your dotfiles.\x1B[39m"
    elif [[ -f $target && $(md5 $path | awk '{print $4}') == $(md5 $target | awk '{print $4}') ]]; then
      echo -e "\x1B[32m~/$base exists and was identical to your dotfile.  Overriding with symlink.\x1B[39m"
      symlink $path $target
    elif [[ -a $target ]]; then
      read -p "\x1B[33m~/$base exists and differs from your dotfile. Override?  [yn]\x1B[39m" -n 1

      if [[ $REPLY =~ [yY]* ]]; then
        symlink $path $target
      fi
    else
      echo -e "\x1B[32m~/$base does not exist. Symlinking to dotfile.\x1B[39m"
      symlink $path $target
    fi
  done
}

if hash md5 2>/dev/null; then
  linkFiles
else 
  echo "md5 is not installed"
  exit 2  
fi
