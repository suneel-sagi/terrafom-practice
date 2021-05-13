provider "aws" {
  region     = "us-east-1"
  #access_key = "AKIAY44WUPKKJNTJKSZ7"
  #access_key = var.acc_key
  #secret_key = "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"
  #secret_key = var.sec_key
}
variable "tags" {
  default = ""
}
resource "aws_instance" "main" {
  count = 2 # loop
  ami = "ami-048f6ed62451373d9"
  #  ami = var.ami.prod
  key_name = "my"
  #key_name = var.key_name
  instance_type = "t2.micro"
  monitoring = true
  #instance_type = var.instance_type[0]
  tags = var.tags
  user_data = "yum update"

  ebs_block_device {
    device_name = "/dev/sdg"
    volume_size = 1
    volume_type = "gp2"
    delete_on_termination = "true"
  }
}

