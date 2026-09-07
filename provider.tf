terraform {
required_providers {
local = {
source  = "hashicorp/local"
}
random = {
source  = "hashicorp/random"
version = "~> 3.0"
}
}
}
provider "local" {}
provider "random" {}
