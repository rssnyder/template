variable "content" {
  type = string
}

variable "name" {
  type = string
}

resource "local_file" "foo" {
  content  = var.content
  filename = var.name
}
