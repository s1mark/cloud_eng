resource "local_file" "local" {
  content  = "Hello world"
  filename = "${path.module}/local.bar"
}


resource "local_file" "example" {
  count    = 10
  content  = "This is the content of file ${count.index}."
  filename = "./file${count.index}.txt"
}