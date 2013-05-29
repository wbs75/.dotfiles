#!/bin/bash

git config --global user.name wbs75
git config --global user.email wbs75@me.com
 
brew tap homebrew/dupes
 
brew install libksba pkg-config libyaml libxml2 libxslt libvirt sqlite autoconf automake apple-gcc42 readline imagemagick rbenv python python3 wget

brew tap timsutton/formulae
 
brew install brew-pkg
 
brew install ruby-build

rbenv rehash

rbenv install 1.9.3-p0

rbenv shell   1.9.3-p0

rbenv global  1.9.3-p0

rbenv rehash

gem install bundler

gem install rubygems-update

gem install puppet

gem install librarian-puppet

gem install puppet-lint

brew doctor
