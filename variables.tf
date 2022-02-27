variable "environment" {
  description = "Environment"
  type        = string
}

variable "name" {
  description = "demo3"
  type        = string
}

variable "cidr" {
  description = "CIDR for VPC"
  type        = string
}

variable "keypair" {
  description = "Key pair name"
  type        = string
}

variable "private_subnets" {
  description = "CIDR for Private Subnets"
  type        = list(string)
}

variable "public_subnets" {
  description = "CIDR for Private Subnets"
  type        = list(string)
}

variable "region" {

  description = "region of project"
  type        = string
  
}

variable "ecr_id" {

  description = "ecr id"
  type        = string
  
}

variable "dockerfile_dir" {
  type = string
  description = "The directory that contains the Dockerfile"
}