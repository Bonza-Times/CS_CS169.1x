#!/bin/bash
# Note: you will be prompted to enter the password several times through the script
# run with . configure-image-0.10.2.sh

# This script is designed for Ubuntu 11.10

cd ~/
sudo apt-get update
sudo apt-get install -y dkms     # For installing VirtualBox guest additions

# Install RVM and ruby 1.9.3 note: may take a while to compile ruby
sudo apt-get install -y curl
\curl -L https://get.rvm.io | bash -s stable --ruby=1.9.3
source /home/ubuntu/.rvm/scripts/rvm


# Install sqlite3 dev
sudo apt-get -y install sqlite3 libsqlite3-dev

# Install nodejs
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install -y nodejs

# Install jslint
cd ~/
curl -LO http://www.javascriptlint.com/download/jsl-0.3.0-src.tar.gz
tar -zxvf jsl-0.3.0-src.tar.gz
cd jsl-0.3.0/src/
make -f Makefile.ref
cd ~/
sudo cp jsl-0.3.0/src/Linux_All_DBG.OBJ/jsl /usr/local/bin
sudo rm jsl-0.3.0-src.tar.gz
sudo rm -rf ~/jsl-0.3.0

# Install other programs
sudo apt-get install -y git
sudo apt-get install -y chromium-browser
sudo apt-get install -y graphviz
sudo apt-get install -y libpq-dev
sudo apt-get install nfs-common portmap # nfs shared folder with vagrant


## Editors
# just use nano

## GEMS

# install rails 3.2.13
gem install rails -v 3.2.13

# sqlite 3 gem
gem install sqlite3-ruby

# other gems
gem install cucumber -v 1.3.2
gem install cucumber-rails -v 1.0.0
gem install cucumber-rails-training-wheels
gem install rspec
gem install autotest
gem install spork
gem install metric_fu
gem install debugger
gem install timecop -v 0.6.1
gem install chronic -v 0.9.1
gem install omniauth
gem install omniauth-twitter
gem install nokogiri
gem install ruby-tmdb -v 0.2.1
gem install ruby-graphviz
gem install reek
gem install flog
gem install flay
rvm 1.9.3 do gem install jquery-rails
gem install fakeweb

# Get Heroku toolbelt for Ubuntu
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh 
