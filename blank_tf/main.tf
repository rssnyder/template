variable "vvv" {
  type = string
}

resource "null_resource" "this" {
  provisioner "local-exec" {
    command = "echo ${var.vvv}"
  }
}
