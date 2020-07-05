# Vim config

## Installation 

To begin enter the following command on your terminal.

```
git clone https://github.com/ArthurPV/config-vim.git ~/
```

After doing that access the folder with the following command.
```bash
cd 
cd vim-config
mv .vimrc ~/
```
### Install Vundle.vim

Check if you have the ```.vim``` folder.
```bash
find .vim
```


If you don't have a ```.vim``` folder create it.
```bash
mkdir ~/.vim
```

Then follow the [Vundle.vim](https://github.com/VundleVim/Vundle.vim) documentation to install it.

### Install vim plugins

After installing Vundle.vim install the vim plugins. Start vim by entering vim on your terminal.

On the vim config I create a shortcut to install its packages more quickly execute: F7.
But normally you have to type :PluginInstall on vim.
