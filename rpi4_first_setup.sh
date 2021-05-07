#!/usr/bin/env bash

ansible-vault decrp
ansible-playbook rpi4_first_setup.yml --ask-vault-pass "$@"