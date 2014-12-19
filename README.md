==========================
packer-template
==========================

Packer template for building a base development box.

Usage
=====

Installing Packer
-----------------

Download the latest packer from http://www.packer.io/downloads.html and unzip the appropriate directory.

If you're using Homebrew

```
    $ brew tap homebrew/binary
    $ brew install packer
```

Running Packer
--------------

```
    $ git clone https://github.com/yappabe/packer-template
    $ cd packer-template
    $ git clone https://github.com/yappabe/ansible-roles
    $ packer build template.json
```

Supported versions
------------------

This templates was tested using a packer 0.7.2 .
