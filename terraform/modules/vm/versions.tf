terraform {
  required_version = ">= 1.1.4"
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = ">= 0.6.13"
    }
  }
}
