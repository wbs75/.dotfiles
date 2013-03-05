#!/bin/bash   

# The following should be install 3 packages need to b einstall before running script:
# 01) Install Xcode:
# 02) Install Command Line Tools:
# 03) Install XQuartz:

sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer  

sudo ln -s /opt/X11 /usr/X11  

sudo chown -R `whoami` /usr/local    

ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"    

brew install git    

cd /usr/local  
find Cellar  
ls -l bin  

cd $HOME
           
echo "source `brew --prefix`/Library/Contributions/brew_bash_completion.sh " >> ~/.bash_profile 

git config --global user.name "Your Name"
git config --global user.email "Your Email" 
source ~/.bash_profile    

brew tap homebrew/dupes    

brew install apple-gcc42  
brew install atk  
brew install autoconf  
brew install automake  
brew install bash
brew install bash-completion
brew install cairo  
brew install fontconfig  
brew install gdbm  
brew install gdk-pixbuf  
brew install gtk+  
brew install libgpg-error  
brew install libksba  
brew install libyaml  
brew install libxml2
brew install libxslt
brew install markdown  
brew install mercurial  
brew install multimarkdown  
brew install node  
brew install python3  

echo 'export PATH="/usr/local/bin:/usr/local/share/python3:/usr/local/sbin:~/bin:$PATH"' >> ~/.bash_profile 

brew tap timsutton/formulae
brew install brew-pkg

cd $HOME

mkdir -p ~/.zsh/func
ln -s "$(brew --prefix)/Library/Contributions/brew_zsh_completion.zsh" ~/.zsh/func/_brew

fpath=($HOME/.zsh/func $fpath)
typeset -U fpath

echo "gem: -n/usr/local/bin" >> ~/.gemrc

curl -L https://get.rvm.io | bash -s stable --ruby  
source ~/.rvm/scripts/rvm
type rvm | head -1  
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM functi$ on' >> ~/.bash_profile    
source /Users/wbs/.rvm/scripts/rvm
source ~/.bash_profile    
rvm pkg install openssl    
rvm reinstall 1.9.3 --with-readline-dir=/usr/local/Cellar/readline/6.2.4  
rvm reinstall 2.0.0 --with-readline-dir=/usr/local/Cellar/readline/6.2.4    
cd /usr/local/bin    
ln -s gcc-4.2 /usr/bin/gcc-4.2  

cd $HOME

echo "export GEM_HOME='$(brew --prefix)'" >> ~/.bashrc
source /Users/wbs/.rvm/scripts/rvm  
source ~/.bash_profile   
rvm use 1.9.3 --default    
ruby -v 
#

gem install rubygems-update 
update_rubygems    
gem update --system    
bundle install --system    
mkdir /usr/local/rvm     
ln -s ~/.rvm/* /usr/local/rvm    
type rvm | head -1    
rvm get head    
rvm -v    

brew doctor

echo "Add '/usr/local/Cellar/bash/4.2.42' to '/private/etc/shells'"

echo "Finish Install (Reboot in 1 minute)" 

sudo shutdown -r +1

