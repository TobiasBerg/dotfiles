#/bin/bash
set -ex

mkdir -p $HOME/.vim;

if [[ ! -d $HOME/.vim/bundle/neobundle.vim ]]; then
  echo "Installing neobundle..."
  git clone git://github.com/Shougo/neobundle.vim $HOME/.vim/bundle/neobundle.vim
  vim +NeoBundleInstall +qall
fi
