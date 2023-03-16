resource "local_file" "foo" {
  count    = 5
  content  = var.file_content
  filename = "${path.module}/foo${count.index}.txt"
}