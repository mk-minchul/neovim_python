# docker build -f neovim_python36 -t mckim/neovim_python36_001 .

FROM ubuntu:16.04

RUN apt-get update && apt-get install -y software-properties-common
RUN DEBIAN_FRONTEND=noninteractive add-apt-repository ppa:neovim-ppa/stable && apt-get update && apt-get install -y neovim python-dev python-pip python3 python3-pip python3-dev curl vim exuberant-ctags git ack-grep

# install python 3.6
RUN DEBIAN_FRONTEND=noninteractive add-apt-repository ppa:jonathonf/python-3.6 && apt-get update && apt-get install -y python3.6 python3.6-dev

# link python to 3.6 version with alias python="python3.6"
# link pip to 3.6 version with alias pip="python3.6 -m pip"
RUN echo "alias python='python3.6'" >> ~/.bash_aliases
RUN echo "alias pip='python3.6 -m pip'" >> ~/.bash_aliases

# link python3 to 3.6 version with alias python3="python3.6"
# link pip3 to 3.6 version with alias pip3="python3.6 -m pip"
RUN echo "alias python3='python3.6'" >> ~/.bash_aliases
RUN echo "alias pip3='python3.6 -m pip'" >> ~/.bash_aliases

# install nvim related packages for python
RUN python3.6 -m pip install neovim pep8 flake8 pyflakes pylint isort

# clean up
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# setup nvimrc
RUN curl -fLo /root/.config/nvim/init.vim --create-dirs https://raw.githubusercontent.com/mk-minchul/neovim_python/master/init.vim

# install packages for nvimrc
RUN timeout 5m nvim || true

