# automatic script for ubuntu

# ------------------------------------------------------------------------------

sudo apt-get install git
git clone https://github.com/mhaidarh/awesome-ubuntu

# ------------------------------------------------------------------------------

# ppa
sudo add-apt-repository ppa:webupd8team/atom
sudo add-apt-repository ppa:webupd8team/brackets
sudo add-apt-repository ppa:ubuntu-mozilla-daily/firefox-aurora
sudo add-apt-repository ppa:paolorotolo/android-studio
sudo add-apt-repository ppa:gnome-terminator
sudo add-apt-repository ppa:libreoffice/ppa

# google chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

# vs code
sudo wget -O - https://tagplus5.github.io/vscode-ppa/ubuntu/gpg.key | sudo apt-key add -
sudo wget -O /etc/apt/sources.list.d/vscode.list https://tagplus5.github.io/vscode-ppa/ubuntu/vscode.list

# mariadb
sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db
sudo add-apt-repository 'deb http://mirror.jmu.edu/pub/mariadb/repo/5.5/ubuntu trusty main'

sudo apt-get update

# ------------------------------------------------------------------------------

# shell
sudo apt-get install zsh
sudo chsh -s =zsh
chsh -s =zsh

# utilities
sudo apt-get install curl httpie wget tree font-roboto
sudo apt-get install software-properties-common
sudo apt-get install build-essential checkinstall

# terminator
sudo apt-get install terminator

# chromium, google chrome
sudo apt-get install chromium
sudo apt-get install google-chrome-stable

# Extensions
# AdBlock Pro
# Auto History Wipe
# Postman

# firefox
sudo apt-get install firefox

# ------------------------------------------------------------------------------

# atom editor
sudo apt-get install atom

# brackets
sudo apt-get install brackets

# vs code
sudo apt install code code-insiders

# nodejs
sudo apt-get install nodejs

# android studio
sudo apt-get install android-studio

# libreoffice
sudo apt-get install libreoffice

# ------------------------------------------------------------------------------

# database

# mysql, mariadb
sudo apt-get install mariadb-server
sudo service mysql stop
sudo mysql_install_db
sudo service mysql start
sudo mysql_secure_installation
mysql -V

# postgresql
sudo apt-get install postgresql-9.4

# mongodb
sudo apt-get install mongodb-org

# robomongo
wget https://download.robomongo.org/0.8.5/linux/robomongo-0.8.5-x86_64.deb
sudo dpkg -i robomongo-0.8.5-x86_64.deb

# ------------------------------------------------------------------------------

# node modules
npm install -g babel-node express-generator

# ------------------------------------------------------------------------------

# hyper.is terminal
# wget https://github.com/zeit/hyper/releases/download/1.1.0/hyper-1.1.0.deb
wget https://hyper-updates.now.sh/download/linux_deb

# ------------------------------------------------------------------------------

# zim
git clone --recursive https://github.com/Eriner/zim.git ${ZDOTDIR:-${HOME}}/.zim

setopt EXTENDED_GLOB
for template_file ( ${ZDOTDIR:-${HOME}}/.zim/templates/* ); do
  user_file="${ZDOTDIR:-${HOME}}/.${template_file:t}"
  touch ${user_file}
  ( print -rn "$(<${template_file})$(<${user_file})" >! ${user_file} ) 2>/dev/null
done

source ${ZDOTDIR:-${HOME}}/.zlogin

zmanage update

# ------------------------------------------------------------------------------

sudo apt-get autoremove &&
sudo apt-get clean &&
