variable "subnet_name" {
    default = "my-subnet1"
    type = string

  
}
variable "vpc_id" {
  type        = string
  description = "The ID of the VPC"
}