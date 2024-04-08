variable cidr {
    default = "22.33.44.55/32"
}

variable name {
    default = "development"
}
# List example
 variable port_numbers {
    description = "Enter four port numbers for your inbound ports"
    type = list[number]
}

# # Map example
variable instance_type_map {
    type = map(string)
    default = {
      "webdevelopment" = "t2.nano"
      "database" = "t2.micro"
      "devops" = "t3.micro"
    }
}
variable port-1{
    description = "Enter number for port1"
    type = number
}

variable port-2{
    description = "Enter number for port2"
    type = number
}
variable port-3{
    description = "Enter number for port3"
    type = number
}
variable port-4{
    description = "Enter number for port4"
    type = number
}

variable sg_name {
  description = "Enter Security group name"
  type = string
  default = "defaultname"
}