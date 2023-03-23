resource "local_file" "file" {
  count = 5
  content  = var.file
  filename = "C:\\Users\\user\\terraform\\${count.index}.txt" 
}