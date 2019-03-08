# -*- mode: ruby -*-
# vi: set ft=ruby :

# For more information on the Vagrantfile, see https://www.vagrantup.com/docs/vagrantfile/ 

cs50user = "vagrant" #cs50

Vagrant.configure("2") do |config|

  # Every Vagrant development environment requires a box. 
  # You can search for boxes at https://vagrantcloud.com/search.
  config.vm.box = "ubuntu/trusty32"
  config.vm.hostname = "csXXbox"

  # Share an additional folder to the guest VM. 
  # The first argument is the path on the host to the actual folder (everything in this folder). 
  # The second argument is the path on the guest where you mount the folder (must be an absolute path). 
  config.vm.synced_folder ".", "/home/vagrant/csXXworking", create: true, owner: cs50user, group: cs50user

  # Provider-specific configuration so you can fine-tune the VM.
  config.vm.provider "virtualbox" do |vb|
    vb.name = 'csXXvm'

    vb.customize [
      "modifyvm", :id,
      "--cpuexecutioncap", "50",
      "--memory", "256",
    ]
  end

  # Enable provisioning with a shell script.
  config.vm.provision "shell", inline: <<-SHELL
    export DEBIAN_FRONTEND=noninteractive

    apt-get update > /dev/null

    apt-get install wget -y > /dev/null
    apt-get install git -y > /dev/null
    apt-get install gcc -y > /dev/null
    apt-get install valgrind -y > /dev/null

    # if you want to run shell scripts, you can also reference those...
    #/home/vagrant/cs50guest/setup.sh

    echo "All done! Now run: vagrant ssh"
  SHELL
end
