variable "vpc_config" {
    description = "To get the CIDR and name of VPC from user"
    type = object({
      cidr_block = string
      name = string
    })
  
}

variable "subnet_config"{
  description = "Get the CIDR & AZ for subnets"
  type = map(object({
    cidr_block = string
    az = string
  }))
}