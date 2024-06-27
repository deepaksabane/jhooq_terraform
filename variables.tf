variable "ami" {
    description = "instance ami"
    type = string
    default = "ami-04f61ae5c57181d0e"
  
}

variable "instance_type" {
    description = "instnace type "
    type = string
    default = "t3.micro"
  
}

variable "instance_count" {
    description = "how many instance you want to create "
    type = number
    default = 2
  
}

variable "enable_public_ip" {
    description = "Enable Ip address"
    type        = bool
    default     = true
}


variable "username" {
    description = "number of user need to be created "
    type = list(string)
    default = [ "deepak", "arati", "shivansh", "Bhavani"]
  
}

variable "Project_Environment" {
    description = "The name of the project and the name of the environment"
    type = map(string)
    default = {
      project = "Deeps-Alpha",
      Environment = "production"
    }
  
}