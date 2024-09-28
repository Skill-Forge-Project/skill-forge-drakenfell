#!/bin/bash

# Install Python 3-venv package
sudo apt install python3-venv python3-pip -y

# Create Python virtual environment
python3 -m venv /vagrant/piston-api

# Activate the virtual environment
source /vagrant/piston-api/bin/activate

# Install requests Python package
pip3 install requests

# Send POST request to the Piston API
python3 /vagrant/install_piston_env.py