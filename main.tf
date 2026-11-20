terraform {
  required_version = ">= 1.5.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

resource "local_file" "project6" {
  filename = "${path.module}/project6-output.txt"

  content = <<EOT
Accenture DevInfra Capstone Project 6
Project: Version Control Infrastructure
Developer: Sreekanth Reddy
Tool: Terraform
Version: 1.0
Status: Initial Configuration
EOT
}

output "project_name" {
  value = "Project 6 - Version Control Infrastructure"
}

output "file_path" {
  value = local_file.project6.filename
}
