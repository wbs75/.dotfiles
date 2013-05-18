#!/bin/bash   

# The following should be install 3 packages need to b einstall before running script:
# 01) Install Xcode:
# 02) Install Command Line Tools:
# 03) Install XQuartz:

#!/bin/bash

sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer

sudo ln -s /opt/X11 /usr/X11

sudo chown -R `whoami` /usr/local

cd $HOME

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
 
brew install libksba pkg-config libyaml libxml2 libxslt llvm sqlite autoconf automake apple-gcc42 readline imagemagick rbenv python python3 node  gtk+  gtk+3 wget multimarkdown  markdown 

echo 'export PATH="/usr/local/share/python:/usr/local/share/python3:$PATH"' >> ~/.bash_profile

brew tap timsutton/formulae
 
brew install brew-pkg
 
source ~/.bash_profile 

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile

brew install ruby-build

echo 'eval "$(rbenv init -)"' >> ~/.bash_profile && source ~/.bash_profile

exec $SHELL -l

rbenv rehash

rbenv install 1.9.3-p385

rbenv shell 1.9.3-p385

rbenv global 1.9.3-p385

rbenv rehash

gem install bundler

gem install rubygems-update

gem install nokogiri -- --with-xslt-dir=/usr/local/opt/libxslt
 
brew doctor
