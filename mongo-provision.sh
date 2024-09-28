#!/bin/bash

# Install Mongo Shell
wget https://downloads.mongodb.com/compass/mongodb-mongosh_2.3.1_amd64.deb

sudo dpkg -i mongodb-mongosh_2.3.1_amd64.deb

mongosh -u mongo_admin -p mongo_admin --authenticationDatabase admin < /vagrant/init-mongo.js

# Reload MongoDB container
docker restart mongo-dev
