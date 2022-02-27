resource "null_resource" "build_container" {
  provisioner "local-exec" {
   # command = "bash ${path.module}/build.sh ${var.dockerfile_dir} ${var.ecr_repository_url}:${var.docker_image_tag}"
   command = "bash ${path.module}/docker.sh ${var.dockerfile_dir} ${var.ecr_id} ${var.region}"
  }
}
