#variable "string" {
#  default = ""
#}
#variable "list" {
#  default = ["",""]
#}

#variable "map" {
# default = {
#   prod=""
#   nonprod=""
#   d1=""
# }
#}

variable "ami" {
  default = {
    prod    = ""
    nonprod = ""
  }
}
variable "instance_type" {
  default = ["0", "1"]
}
variable "key_name" {}

variable "acc_key" {
  default = "AKIAY44WUPKKJNTJKSZ7"
}
variable "sec_key" {
  default = "cEIipUiN3rX2jIDDsa/1KNQs/8IcXNMOn2l8Zv06"
}