echo -e \\n
echo -e Update dnf
sudo dnf update

echo -e \\n
echo -e Install dnf packages
sudo dnf -y install git gcc gcc-c++ openssl-devel readline-devel sqlite-devel

echo -e \\n
echo -e Update some dnf packages
sudo dnf update -y curl libcurl

echo -e \\n
echo -e Install Postgresql
sudo dnf -y install https://download.postgresql.org/pub/repos/yum/reporpms/EL-8-x86_64/pgdg-redhat-repo-latest.noarch.rpm
sudo dnf -qy module disable postgresql
sudo dnf -y install postgresql12-server postgresql12-devel

echo -e \\n
echo -e Install NVM, NodeJS and Yarn to use webpacker
git clone git://github.com/creationix/nvm.git ~/.nvm
source ~/.nvm/nvm.sh
nvm install stable
curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo
sudo rpm --import https://dl.yarnpkg.com/rpm/pubkey.gpg
sudo dnf -y install yarn

echo -e \\n
echo -e Install rbenv
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build;
source ~/.bash_profile

echo -e \\n
echo -e Install ruby
rbenv install 2.6.5; rbenv global 2.6.5; rbenv local 2.6.5; rbenv rehash

echo -e \\n
echo -e Install gems
gem install bundler
gem install rails -v 6.0.2

echo -e \\n
echo -e Stop firewall
sudo systemctl stop firewalld

echo -e \\n
echo -e Set timezone and langage
sudo timedatectl set-timezone Asia/Tokyo
sudo localectl set-locale LANG=ja_JP.utf8
sudo localectl set-keymap jp106
sudo dnf -y install langpacks-ja

echo -e \\n
echo -e Do follow action
# rails new ...

