data "template_file" "ansible_installation" {
  template = file("${path.module}/bootstrap.txt")
}