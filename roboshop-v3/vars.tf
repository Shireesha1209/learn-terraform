variable "security_groups" {
  default = [ "sg-04dca373a0eb83f4d" ]
}

variable "zone_id" {
  default =  "Z08959223LVCF638123GM"
}

variable "components" {
  default = {
    frontend = {
      name = "frontend"
      instance_type = "t3.micro"
    }
    cart = {
      name = "cart"
      instance_type = "t3.micro"
    }
  }
}