#! /usr/bin/env bash

ansible-playbook -i /workspace/ansible/inventory/hosts.yml -vv /workspace/ansible/docker_services.yml
