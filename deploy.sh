ln -s ~/.vim/.vimrc ~/.vimrc
#sudo pip install git+git://github.com/Lokaltog/powerline
#echo "Remember to install powerline fonts: \
#    https://github.com/Lokaltog/powerline-fonts"

git submodule init
git submodule update
git submodule foreach --recursive git submodule init
git submodule foreach --recursive git submodule update

cd extra/pyclewn/
vimdir=$HOME/.vim python setup.py install --force --home=$HOME
