# -*- mode: ruby -*-
# vi: set ft=ruby :


# Drakenfell Realm - Skill Forge Development Environment for VirtualBox

# Network Configuration
# Private Network:
# IP Address: 192.168.56.10

# Port Forwarding (Guest -> Host) Change the values to match your preferences:
# 22 -> 23 (SSH)
# 8000 -> 8000 (Skill Forge)
# 5432 -> 5432 (PostgreSQL)
# 27017 -> 27017 (MongoDB)
# 2000 -> 2000 (Piston API)

# Box Configuration
# Box: debian/bookworm64 (Debian 12.0)

# Oracle VB Provider Configuration
# CPU: 2
# Memory: 8192 MB
# CPU Execution Cap: 100%

# Provisioning Scripts
# node-provision.sh Update OS and install auxiliary tools
# docker-provision.sh Install Docker and Docker Compose
# postgres-provision.sh Install PostgreSQL and create a database
# mongo-provision.sh Setup MongoDB replica set
# piston-provision.sh Install Piston runtime environments



Vagrant.configure(2) do |config|
  # Box Configuration
  config.vm.define "drakenfell-skill-forge" do |node|
    node.vm.box = "debian/bookworm64"
    node.vm.hostname = "skill-forge-drakenfell"

    # Network Configuration
    node.vm.network "private_network", ip: "192.168.56.10"
    node.vm.network "forwarded_port", guest: 22, host: 23
    node.vm.network "forwarded_port", guest: 8000, host: 8000, auto_correct: true
    node.vm.network "forwarded_port", guest: 5432, host: 5432, auto_correct: true
    node.vm.network "forwarded_port", guest: 27017, host: 27017, auto_correct: true
    node.vm.network "forwarded_port", guest: 2000, host: 2000, auto_correct: true

    # Disable automatic updates for the vbguest plugin
    if Vagrant.has_plugin?("vagrant-vbguest") then
      config.vbguest.auto_update = false
    end

    # Oracle VB Provider Configuration
    config.vm.provider "virtualbox" do |vb|
      vb.name = "Skill Forge Drakenfell Realm"
      vb.cpus = 2
      vb.memory = "8192"
      vb.customize ["modifyvm", :id, "--cpuexecutioncap", "100"]
      vb.gui = false
    end

    # Sync the current folder to the VM
    config.vm.synced_folder ".", "/vagrant"

    # Provisioning Scripts
    node.vm.provision "shell", name: "node-provision", path: "./node-provision.sh", privileged: "true"
    node.vm.provision "shell", name: "docker-provision", path: "./docker-provision.sh", privileged: "true"
    node.vm.provision "shell", name: "postgres-provision", path: "./postgres-provision.sh", privileged: "true"
    node.vm.provision "shell", name: "mongo-provision", path: "./mongo-provision.sh", privileged: "true"
    node.vm.provision "shell", name: "piston-provision", path: "./piston-provision.sh", privileged: "true"
  end
end