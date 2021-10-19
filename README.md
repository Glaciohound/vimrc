## How to install

### Cloning the Repository and Setting Up Paths

    git clone --depth=1 https://github.com/Glaciohound/vimrc.git
    ln -s vimrc ~/.vim_runtime
    sh ~/.vim_runtime/install_awesome_vimrc.sh

### Installing Vundle

    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim_runtime/my_plugins/Vundle.vim

Then use `:VundleInstall` to install all included packages (YouCompleteMe requires further compilation)
If you do not want to download (the huge) YouCompleteMe repo now, simply comment it out.


### Flake 8 Check
You need to install flake8 first, probably by running `conda install flake8`.

### Install YouCompleteMe

Follow the instructions from https://github.com/ycm-core/YouCompleteMe#macos .

You might need to specify `CC=clang` before `python3 install.py` when on MacOS,
and use the original python other than the one provided by Anaconda.

I also find network connection to be critical in some cases,
for example when waiting for some python configuration.
