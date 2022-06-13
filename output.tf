output "container-ip-info" {
  value = docker_container.host1.ip_address
  description = "The host gives an IP address to the container host1 using the default bridge strtegy"
  depends_on = [
    docker_volume.volume
  ]
}