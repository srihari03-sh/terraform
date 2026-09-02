terraform {
required_providers {
local = {
source = "hashicrop/local"
version = "~> 2.6"
}
}
}
resource "local_file" "demo" {
 filename = "hello.txt"
content = "This file was created  by Terraform"
}
