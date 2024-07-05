variable "resource_group_name" {
    type = string
    default = "mohamed"  
}
variable "resource_group_location" {
    type = string
    default = "uk south"
}
variable "virtual_network_name" {
    type = string
    default = "vnet001"
}
variable "addres_space" {
    type = string
    default = "10.0.0.0/16"
}
variable "subnet_details" {
    type = map(object({
      name =string
      addres_prefix=string

    }))
    default = {
      "subnet1" = {
     name="subnet001"
    addres_prefix="10.0.1.0/24"        
      },
      "subnet2" = {
     name="subnet002"
    addres_prefix="10.0.2.0/24"        
      },
      "subnet3" = {
     name="subnet003"
    addres_prefix="10.0.3.0/24"        
      }
    }
    }

  
