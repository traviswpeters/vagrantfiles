## Quick-Start Guide

1. Download our csXXdev environment:
```
git clone https://github.com/traviswp/vagrantfiles.git csXXdev && cd csXXdev && ./bootstrap.sh
```

2. Enjoy your VM and do your work :)

I suggest creating a new repository for each new assignment, and cloning those into the csXXdev directory. 
For example: 


```
cs50xx/
    Vagrantfile
    bootstrap.sh
    README.md
    - a1
    - a2
    - a3
    - a4
    - a5
    - a6
    - tse
    - yalnix
    ...etc...
```
Note that all files directly in cs50xx are made to be ignored (except for the files needed to maintain this environment)
Each folder (a1, a2, ...) is a separate git repo that you've cloned into this folder on your machine. 
The VM is setup to mount the cs50xx/ folder on your host into your VM, so you will have access to your projects within your VM.