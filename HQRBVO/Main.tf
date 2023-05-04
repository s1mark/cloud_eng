

resource "local_file" "local" {
  content  = var.file_content
  filename = "${path.module}/local.bar"
}


resource "local_file" "example" {
  count    = 10
  content  = "This is the content of file ${count.index+1}."
  filename = "./${count.index+1}.txt"
}
