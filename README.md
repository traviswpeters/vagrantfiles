## Quick-Start Guide

1. Download and setup the csXXdev environment:

```
git clone https://github.com/traviswp/vagrantfiles.git csXXdev && cd csXXdev && ./bootstrap.sh
```

2. Enjoy your VM and do your work :)

To log into your VM, use vagrant's SSH command:

```
vagrant ssh
```

If you want to power your VM on or off, use:

```
vagrant up    # <<< starts the VM
vagrant halt  # <<< stops the VM
```

If you mess up your VM... no worries! Run the following commands:

```
vagrant destroy  # <<< stop the VM, then delete the VM
./bootstrap.sh   # <<< setup a fresh instance of your VM and re-run all provisioning
```

## Sharing Access to Files Between Host & Guest

Currently, the VM is configured to create a shared folder between 
the current directory on the **Host** (your machine) 
and `/home/vagrant/csXXworking` on the **Guest** (your VM)

I suggest creating a new repository for each new assignment, and cloning those into the csXXdev directory. 
For example: 


```
csXXdev/
|-- README.md
|-- Vagrantfile
|-- a1
|-- a2
|-- a3
|-- bootstrap.sh
|-- tiny-search-engine
`-- yalnix
...etc...
```

Note that all files directly in cs50xx are made to be ignored (except for the files needed to maintain this environment)
Each folder (a1, a2, ...) is a separate git repo that you've cloned into this folder on your machine. 
The VM is setup to mount the cs50xx/ folder on your host into your VM, so you will have access to your projects within your VM.