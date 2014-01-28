ln -s ~/.vim/.vimrc ~/.vimrc
mkdir -p ~/.vim/autoload
curl -Sso ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
sudo pip install git+git://github.com/Lokaltog/powerline
echo "Remember to install powerline fonts: \
    https://github.com/Lokaltog/powerline-fonts"

git submodule init
git submodule update
git submodule foreach --recursive git submodule init
git submodule foreach --recursive git submodule update
