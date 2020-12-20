provider "aws" {
  access_key = "AKIASAGGTWAPIP2JICWP"
  secret_key = "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"
  region     = "ap-southeast-1"
}
resource "aws_vpc" "My_vpc" {
  cidr_block           = "10.0.0.0/16"
  instance_tenancy     = "default"
  enable_dns_hostnames = "true"
  tags = {
    Name = "terraform"
  }
}
