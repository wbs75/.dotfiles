#!/bin/bash    

ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"     

sudo chown -R `whoami` /usr/local    

brew install git    

cd /usr/local  
find Cellar  
ls -l bin  

cd $HOME

git config --global user.name "Your Name"
git config --global user.email "Your Email" 
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
brew install libxml2
brew install libxslt
brew install markdown  
brew install mercurial  
brew install multimarkdown  
brew install node  
brew install python  

brew tap timsutton/formulae
brew install brew-pkg

cd $HOME

curl -L https://get.rvm.io | bash -s stable --ruby  
source ~/.rvm/scripts/rvm
type rvm | head -1  
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM functi$ on' >> ~/.bash_profile    
source /Users/wbs/.rvm/scripts/rvm
source ~/.bash_profile    
rvm pkg install openssl    
rvm reinstall 1.9.3 --with-readline-dir=/usr/local/Cellar/readline/6.2.4    
cd /usr/local/bin    
ln -s gcc-4.2 /usr/bin/gcc-4.2  

cd $HOME

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
echo "Finish Install (Reboot in 1 minute)" 

sudo -v

sudo shutdown -r +1

