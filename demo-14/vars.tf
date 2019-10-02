variable "PATH_TO_PRIVATE_KEY" {
  default = "sshkeyvpc"
}
variable "PATH_TO_PUBLIC_KEY" {
  default = "sshkeyvpc.pub"
}

variable "AWS_REGION"{
  default = "us-east-1"
}

variable "AMIS" {
  type = "map"
  default = {
    us-east-1 = "ami-07d0cf3af28718ef8"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-844e0bf7"
  }
}
