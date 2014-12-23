#!/bin/bash

set -e

#export PACKER_LOG=1
rm builds/*.box || true
rm builds/.vagrant || true
packer build template.json
vagrant box remove ubuntu64-php || true
vagrant box add ubuntu64-php builds/ubuntu-14-04-x64-virtualbox.box