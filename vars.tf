variable "prefix" {
  default = "suraj"
}
variable "volume-name" {
   
}
variable "image-name" {
  default     = "centos:latest"
  type        = string
  description = "This is base image to create the docker container"
}

variable "container-port" {
  default     = 8080
  type        = number
  description = "This is the internal port of the created container"
}
variable "host-port" {
  default     = 25678
  type        = number
  description = "This is the port number of the host"
}
variable "mount-target" {
  default     = "/home/vol-info"
  type        = string
  description = "The target in the container where the volume is located"
}
variable "mount-propogation" {
  default     = "rshared"
  type        = string
  description = "This specifies the type of propogation for the volume created"
}
variable "hexvalue-lenght" {
  default     = 3
  type        = number
  description = "This specifies the number of bytes used to create a hex value"
}

