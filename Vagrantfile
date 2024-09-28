# -*- mode: ruby -*-
# vi: set ft=ruby :


# Drakenfell Realm - Skill Forge Development Environment for VirtualBox

# Port Forwarding (Guest -> Host) Change the values to match your preferences:
# 22 -> 23
# 8000 -> 8000
# 5432 -> 5432
# 27017 -> 27017


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

    node.vm.provision "shell", path: "./node-provision.sh", privileged: "true"
    node.vm.provision "shell", path: "./docker-provision.sh", privileged: "true"
    node.vm.provision "shell", path: "./postgres-provision.sh", privileged: "true"
    node.vm.provision "shell", path: "./mongo-provision.sh", privileged: "true"


  end
end