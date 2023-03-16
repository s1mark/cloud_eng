resource "local_file" "foo" {
  count   = 5
  content  = "Hello World!"
  filename = "${path.module}/foo[count.index].txt"
}