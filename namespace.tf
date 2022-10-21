terraform {
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
    }
  }
}

provider "kubernetes" {
  #   config_path    = "~/.kube/config"
  #   config_context = "my-context"
}

resource "kubernetes_namespace" "namespace" {
  metadata {
    name = var.namespace
  }
}

variable "namespace" {
  type = string
}

terraform {
  backend "s3" {
    bucket = "riley-snyder-harness-io"
    key    = "terraform/template/scratch"
    region = "us-west-2"
  }
}
