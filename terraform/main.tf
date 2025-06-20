terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}

provider "null" {}

resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo ${var.example_message}"
  }
}