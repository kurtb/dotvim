dotvim
======

Vim settings

http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/

On windows, from an admin command prompt, do a:

```Batchfile
git clone https://github.com/kurtb/dotvim.git .vim
cd .vim
git submodule init
git submodule update
cd ..
ln -s /home/kurtb/.vim/.vimrc .vimrc
```

For Windows switch .vim to vimfiles and .vimrc to _vimrc
