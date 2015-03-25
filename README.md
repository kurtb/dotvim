dotvim
======

Vim settings

http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/

On windows, from an admin command prompt, do a:

git clone https://github.com/kurtb/dotvim.git vimfiles
cd vimfiles
git submodule init
git submodule update
cd ..
mklink _vimrc .\vimfiles\_vimrc
