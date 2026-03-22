variable "cidr_block" {
  type = string
  default = "10.0.0.0/16"
}

variable "vpc_tags" {
    type = map(string)
    default = {}
}

variable "project" {
    type = string  
}
variable "environment" {
    type = string
  
}
variable "igw_tags" {
    type = map
    default = {}
    }
variable "public_subnet_cidr" {
  type = list
  default = [ "10.0.1.0/24", "10.0.2.0/24" ]
}
variable "public_subnet_tags" {
    type = map
    default = {}
}
variable "private_subnet_cidr" {
  type = list
  default = [ "10.0.11.0/24", "10.0.12.0/24" ]
}
variable "private_subnet_tags" {
    type = map
    default = {}
}

variable "database_subnet_cidr" {
  type = list
  default = [ "10.0.21.0/24", "10.0.22.0/24" ]
}
variable "database_subnet_tags" {
    type = map
    default = {}
}
variable "route_table_tags" {
    type = map
    default = {}
}

variable "eip_tags" {
    type = map
    default = {}
}
variable "nat_tags" {
    type = map
    default = {}
}
variable "is_peering_required" {
    default = false
    type = bool
  
}