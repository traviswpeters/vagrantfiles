# -*- mode: ruby -*-
# vi: set ft=ruby :

# For more information on the Vagrantfile, see https://www.vagrantup.com/docs/vagrantfile/ 
# TODO: Future: Spin up multiple nodes? https://github.com/patrickdlee/vagrant-examples/blob/master/example5/Vagrantfile

cs50user = "vagrant" #cs50

Vagrant.configure("2") do |config|

  # Every Vagrant development environment requires a box. 
  # You can search for boxes at https://vagrantcloud.com/search.
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "mycs50.box"
  
  #
  # ssh settings
  #

  # config.ssh.insert_key = false
  # config.ssh.username = cs50user
  # config.ssh.private_key_path = ["keys/private", "~/.vagrant.d/insecure_private_key"]
  # config.vm.provision "file", source: "keys/public", destination: "~/.ssh/authorized_keys"

  # # Prevent access with plaintext password
  # config.vm.provision "shell", inline: <<-SHELL
  #   sudo sed -i -e "\\#PasswordAuthentication yes# s#PasswordAuthentication yes#PasswordAuthentication no#g" /etc/ssh/sshd_config
  #   sudo service ssh restart
  # SHELL

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  config.vm.synced_folder "./cs50host", "/home/vagrant/cs50guest", create: true, owner: cs50user, group: cs50user

  # Provider-specific configuration so you can fine-tune the VM.
  config.vm.provider "virtualbox" do |vb|
    vb.name = 'cs50vm'

    vb.customize [
      "modifyvm", :id,
      "--cpuexecutioncap", "50",
      "--memory", "256",
    ]
  end

  # Enable provisioning with a shell script.
  config.vm.provision "shell", inline: <<-SHELL
    apt-get update > /dev/null
    apt-get install git -y > /dev/null
    apt-get install gcc -y > /dev/null
    apt-get install valgrind -y > /dev/null
    /home/vagrant/cs50guest/setup.sh

    echo "All done! Now run: vagrant ssh"
  SHELL
end
