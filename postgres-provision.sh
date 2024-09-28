#!/bin/bash

# Install PostgreSQL-15
sudo apt-get install --no-install-recommends postgresql-15 postgresql-client-15 -y

# Install pg_cron
sudo apt-get install --no-install-recommends postgresql-15-cron -y

# Enable and start postgresql-15
sudo systemctl enable postgresql
sudo systemctl start postgresql

# Setup pg_cron
# This directory is created during the first run of PostgreSQL
if [ -f /etc/postgresql/15/main/postgresql.conf ]; then
  echo "Appending pg_cron settings to postgresql.conf"
  
  # Append pg_cron settings
  echo "shared_preload_libraries = 'pg_cron'" >> /etc/postgresql/15/main/postgresql.conf
  echo "cron.database_name = 'skill_forge_dev'" >> /etc/postgresql/15/main/postgresql.conf

  # Restart PostgreSQL to apply the changes
  echo "Restarting PostgreSQL to apply changes..."
  sudo systemctl restart postgresql
else
  echo "postgresql.conf not found, skipping pg_cron configuration."
fi


# Setup PostgreSQL (create database, user with root privileges, setup pg_cron scheduler and import data)
sudo -u postgres psql -c "CREATE DATABASE skill_forge_dev;"
sudo -u postgres psql -c "CREATE USER skill_forge WITH SUPERUSER PASSWORD 'skill_forge';"
sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE skill_forge_dev TO skill_forge;"
sudo -u postgres psql -d skill_forge_dev -f /vagrant/init.sql
sudo -u postgres psql -d skill_forge_dev -f /vagrant/achievements.sql