terraform {
  required_version = ">= 1.0"
}

resource "local_file" "project_info" {
  filename = "${path.module}/project-info.txt"
  content  = "AI-Powered E-Commerce DevOps Project\nManaged using Terraform."
}

output "project_file" {
  value = local_file.project_info.filename
}
