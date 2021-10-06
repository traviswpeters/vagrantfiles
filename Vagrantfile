# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # A few different VMs...
  config.vm.box = "ubuntu/focal64"
  # config.vm.box = "kalilinux/rolling"
  # config.vm.box = "hashicorp/bionic64"
  # config.vm.box = "generic/ubuntu1804"
  # config.vm.box = "generic/trusty32"
  # config.vm.box = "generic/fedora28"

  config.vm.hostname = "hackvm"

  config.vm.provider 'virtualbox' do |vb|
    vb.gui = false
    vb.check_guest_additions = false
    vb.customize ['modifyvm', :id, '--name', 'HackVM']
    vb.customize ['modifyvm', :id, '--memory', 2048]
    vb.customize ["modifyvm", :id, "--cpuexecutioncap", "50"]
  end

  # Don't check for updates on every 'vagrant up'
  config.vm.box_check_update = false

  # Network config
  # config.vm.network "forwarded_port", guest: 80, host: 8888
  # config.vm.network "forwarded_port", guest: 59718, host: 59718
  config.vm.network "public_network", bridge: "en0: Wi-Fi (Wireless)"

  # Sync the current directory (".") on my host machine with the VM
  config.vm.synced_folder "./projects", "/home/vagrant/projects"
  config.vm.synced_folder "./work", "/home/vagrant/work"

  # Use "File Provisioner" to upload a file or directory from the host machine to the guest machine.
  config.vm.provision "file", source: "~/.gitconfig", destination: "/home/vagrant/.gitconfig"
  config.vm.provision "file", source: "~/projects/vagrantfiles/colors.rc", destination: "/home/vagrant/.colors.rc"

  # Provisioning the VM with a shell script.
  config.vm.provision "shell", path: "~/projects/vagrantfiles/setup-linux.sh"
  config.vm.provision "shell", privileged: false, path: "~/projects/vagrantfiles/setup-linux-user.sh"
  config.vm.provision "shell", inline: "echo All done! Now run: vagrant ssh"

end

