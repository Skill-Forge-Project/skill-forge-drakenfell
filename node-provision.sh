#!/bin/bash

# Update and upgrade the package list
sudo apt-get update -y
sudo apt-get upgrade -y

# Install the needed packages
sudo apt-get install -y git vim curl wget