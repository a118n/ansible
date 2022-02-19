# Infrastructure to test Ansible roles & playbooks

## Getting started

### KVM

  - Make sure you have a working installation of KVM & libvirt

  - For DNS resolution: https://libvirt.org/nss.html

### SSH Key

  - If you don't already have a key, generate a new ssh keypair
  - Paste your **PUBLIC** key to `terraform/templates/cloud_init.cfg` inside ```ssh_authorized_keys:``` section of ```ansible``` user

### Terraform

  - cd into terraform directory and run ```terraform init && terraform apply```
  - This should create the required VMs
  - Default root password is ```MyPassword123```

### Ansible
  - If DNS resolution is not working, populate inventory.yml with IP addresses of the servers
  - Now you can test various roles & playbooks
