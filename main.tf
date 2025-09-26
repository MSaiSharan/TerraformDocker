terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0"
    }
  }
}

provider "docker" {
    host = "npipe:////./pipe/docker_engine"
}

resource "docker_image" "python" {
  name         = "python:3.11"
  keep_locally = false
}  

resource "docker_container" "python_container" {
  name  = "terraform-python"
  image = docker_image.python.name
  command = ["python3", "-m", "http.server", "8000"]

  ports {
    internal = 8000
    external = 8000
  }
}
