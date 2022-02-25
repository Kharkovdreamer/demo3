resource "aws_ecs_task_definition" "webserver" {
  family = "webserver"

  container_definitions = <<EOF
[
  {
    "name": "webserver",
    "image": "docker.io/library/nginx:latest",
    "portMappings": [
      {
        "containerPort": 80,
        "hostPort": 80
      }
    ],
    "cpu": 0,
    "memory": 128,
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-region": "eu-central-1",
        "awslogs-group": "webserver",
        "awslogs-stream-prefix": "ecs"
      }
    }
  }
]
EOF
}
