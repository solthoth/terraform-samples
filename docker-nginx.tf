provider "docker" {
  host = "npipe:////.//pipe/docker_engine"
}

resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.latest
  name  = "nginx-tutorial"
  ports {
    internal = 80
    external = 8880
  }
}