terraform {
  required_version = ">= 0.13.5"

  required_providers {
    null = {
      source  = "hashicorp/null"
      version = ">= 2.1"
    }
  }
}

resource "null_resource" "consulrollout" {
  provisioner "local-exec" {
    command = "echo ${var.git_hash}"
  }
}
