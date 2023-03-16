resource "local_file" "local" {
  content  = "Hello world"
  filename = "${path.module}/local.bar"
}