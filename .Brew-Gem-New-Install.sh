#!/bin/bash

# 'Brew-Gem-New-Install' v03012013 #### 
#
# Simple Bash script i run on my workstation when installing clean OS.
# 
# To figure out what version of packages may or may not work or be needed:  
# Look at # above "v03012013" which is date when i last tested and ran script.  
# If you have issue you may need to make adjustments.
# Terminal should give you explantation if you recieve error.
#
# Prerequisites:
# 01) Install Xcode, Command Line Tools, Install XQuartz:
# 02) Add Gemfile to $HOME

# **** Add or Remove any packages you may or may not need ****

sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer
ln -s /opt/X11 /usr/X11    
sudo chown -R `whoami` /usr/local

ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)" 

brew install git

cd /usr/local
find Cellar
ls -l bin
cd

git config --global user.name W. SMITH
git config --global user.email wbs75@me.com
source ~/.bash_profile

brew tap homebrew/dupes

brew install apple-gcc42
brew install atk
brew install autoconf
brew install automake
brew install bash
brew install cairo
brew install fontconfig
brew install gdbm
brew install gdk-pixbuf
brew install gtk+
brew install libgpg-error
brew install libksba
brew install libyaml
brew install markdown
brew install mercurial
brew install multimarkdown
brew install node
brew install python
brew install ruby

brew tap timsutton/formulae
brew install brew-pkg

cd

gem install rubygems-update 
gem install bundler
update_rubygems 
gem update --system
bundle install --system 

exit
#
