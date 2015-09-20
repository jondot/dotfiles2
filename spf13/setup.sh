cd ~
ln -s dotfiles/spf13/.gvimrc .gvimrc
ln -s dotfiles/spf13/.vimrc.before.local .vimrc.before.local
ln -s dotfiles/spf13/.vimrc.bundles.local .vimrc.bundles.local
ln -s dotfiles/spf13/.vimrc.local .vimrc.local

echo installing YCM
./.vim/bundle/YouCompleteMe/install.py --gocode-completer --clang-completer

