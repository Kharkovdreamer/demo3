variable "cluster_id" {
  description = "The ECS cluster ID"
  type        = string
}

variable "region" {
  description = "region"
  type        = string
}
variable "ecr_name" {
  description = "ecr name"
  type        = string
  default     = "demo3"
}

variable "ecr_id" {
  description = "ecr id"
  type        = string
}