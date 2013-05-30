#!/bin/bash

sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer

sudo ln -s /opt/X11 /usr/X11

sudo chown -R `whoami` /usr/local

ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"  
 
brew install bash-completion git  
 
cd /usr/local 

find Cellar  

ls -l bin    
 
git config --global user.name wbs75

git config --global user.email wbs75@me.com
 
echo 'export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"' >> ~/.bash_profile  
 
echo 'source `brew --prefix`/Library/Contributions/brew_bash_completion.sh' >> ~/.bash_profile 
 
source ~/.bash_profile 
 
brew tap homebrew/dupes
 
brew install libksba pkg-config libyaml libxml2 libxslt libvirt xar sqlite autoconf automake apple-gcc42 readline imagemagick rbenv python python3 wget

echo 'export PATH="/usr/local/share/python:/usr/local/share/python3:$PATH"' >> ~/.bash_profile

brew tap timsutton/formulae
 
brew install brew-pkg
 
source ~/.bash_profile 

brew install rbenv 

brew install ruby-build

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile

echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

exec $SHELL -l

rbenv install 2.0.3

rbenv rehash

rbenv install 1.9.3-p385

rbenv rehash

rbenv install 1.9.3-p0

rbenv shell   1.9.3-p0

rbenv global  1.9.3-p0

rbenv rehash

gem install bundler --no-ri --no-rdoc

gem install librarian --no-ri --no-rdoc

gem install puppet --no-ri --no-rdoc

gem install puppet-lint --no-ri --no-rdoc

gem install librarian-puppet --no-ri --no-rdoc

gem install bundler --no-ri --no-rdoc

gem install rubygems-update --no-ri --no-rdoc

gem install nokogiri --no-ri --no-rdoc

rbenv rehash

brew cleanup

brew doctor
