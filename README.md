# making neovim work

# install nodejs
curl -sL https://deb.nodesource.com/setup_14.x | sudo bash -

# install neovim
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim


sudo pip install pynvim
sudo npm i -g neovim
sudo apt install xsel


sudo pip install jedi --upgrade
sudo pip install rope


# install Plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# append this to bash profile
alias vim="nvim"
alias vi="nvim"

# within nvim
:CocInstall coc-python
