variable "test_servers" {
  type = map(object({
    cpu = number
    ram = number
    hdd = number
  }))
}
