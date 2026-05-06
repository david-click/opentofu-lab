terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

resource "local_file" "test" {
  filename = "${path.module}/hello-tofu.txt"
  content  = "OpenTofu is working on dclick-dev.\n"
}
