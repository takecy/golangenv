# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "chef/centos-6.6"
  config.vm.hostname = "centos6.6-golang"

  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.provider "virtualbox" do |vb|
     # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
     vb.name = "centos6.6-golang"
     # Customize the amount of memory on the VM:
     vb.memory = "1024"
  end

  # config.vm.provision "shell", inline: <<-SHELL
  #   sudo apt-get update
  #   sudo apt-get install -y apache2
  # SHELL

  # config.vm.provision "shell" do |s|
  #   s.path = "./setup.sh"
  # end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "ansible/task/go.yml"
    ansible.inventory_path = "ansible/hosts"
    ansible.limit = "all"
    ansible.verbose = "v"
  end
end
