provider "docker" {
  host = "tcp://localhost:2375"
}

resource "random_id" "hexvalue" {
  byte_length = var.hexvalue-lenght

}

resource "docker_image" "alpine" {
  name = var.image-name
}

resource "docker_container" "host1" {
  image    = docker_image.alpine.latest
  name     = "host1${random_id.hexvalue.hex}"
  attach   = false
  must_run = true
  command  = ["sleep", "600",]
  //command = []
  ports {
    internal = var.container-port
    external = var.host-port
  }
  mounts {
    target    = var.mount-target
    source    = docker_volume.volume.mountpoint
    type      = "bind"
    
    bind_options {
      propagation = var.mount-propogation
    }
  }
}

resource "docker_volume" "volume" {
  name = join("-",[var.prefix,var.volume-name])

}

