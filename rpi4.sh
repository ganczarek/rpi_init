#!/usr/bin/env bash

ansible-playbook rpi4.yml --ask-vault-pass "$@"