#!bin/bash 
sudo apt-get update
sudo apt-get -y install postgresql
sudo service postgresql start
sudo -u postgres psql -c"create user mob_db_user with encrypted password 'mob_db_pass';"
sudo service postgresql restart
sudo useradd -m mob_app_usr