resource "null_resource" "this" {
  provisioner "remote-exec" {
    inline = [
      "whoami",
      "pwd"
    ]
  }
}
