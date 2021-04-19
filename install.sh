#!/bin/sh

# Install all the necessary Debian packages, especially `stow`.
./install_debian_packages.sh
./configure_services.sh

stow --dotfiles bash
stow --dotfiles emacs
stow --dotfiles email
stow --dotfiles firefox
stow --dotfiles git
stow --dotfiles lisp
stow --dotfiles music
stow --dotfiles ruby

# The set-up for x-windows with .Xresources did not work on Ubuntu 20.04
#stow --dotfiles x-windows

# Link ~/.bash_profile -> ~/.bashrc
rm -f ~/.bash_profile
ln -s ~/.bashrc ~/.bash_profile

# Many of the tools in this repo are written in Ruby, and some depend on
# external libraries. This installs those.
./install_ruby_gems.sh

# Similarly, we use a couple of Python packages.
./install_python_packages.sh

# Finally, the Node packages. Dang, computers are complicated.
./install_node_packages.sh


# Link latexmk
ln -s ~/dotfiles/latexmk/latexmkrc_Linux ~/.latexmkrc
