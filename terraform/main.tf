/*
    TEST ENVIRONMENT
*/

# POOL
resource "libvirt_pool" "test_pool" {
  name = "test"
  type = "dir"
  path = "/var/lib/libvirt/pools/test"
}

# SERVERS
module "test_srv" {
  source = "./modules/vm"

  for_each = var.test_servers

  vm_name    = "${each.key}.test"
  pool_name  = libvirt_pool.test_pool.name
  vm_memory  = each.value.ram
  vm_vcpus   = each.value.cpu
  image_path = "/var/lib/libvirt/images/Rocky-8-GenericCloud-8.5-20211114.2.x86_64.qcow2"
  # image_path   = "/var/lib/libvirt/images/focal-server-cloudimg-amd64.img"
  network_name = "default"
  network_id   = null

  depends_on = [libvirt_pool.test_pool]
}

output "test_srv_info" {
  # Splat expression only works with lists, sets, and tuples, but module_test_srv is a map
  value = values(module.test_srv)[*].vm_info
}
