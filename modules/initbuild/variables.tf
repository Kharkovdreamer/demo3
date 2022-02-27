variable "dockerfile_dir" {
  type = string
  description = "The directory that contains the Dockerfile"  
}

variable "ecr_id" {
  type        = string
  description = "ID of ECR repository"
}

variable "region" {
  type        = string
  description = "region of ECR repository"
}

variable "docker_image_tag" {
  type        = string
  description = "This is the tag which will be used for the image that you created"
  default     = "latest"
}

