resource "aws_subnet" "public_subnet" {
  vpc_id                  = "${aws_vpc.My_vpc.id}"
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = "true"
  tags = {
    Name = "public_subnet"
  }
}
resource "aws_subnet" "private_subnet" {
  vpc_id                  = "${aws_vpc.My_vpc.id}"
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = "false"
  availability_zone        = "ap-southeast-1b"
  tags = {
    Name = "private_subnet"
  }
}
resource "aws_instance" "application-server" {
  ami = "ami-0d728fd4e52be968f"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.public_subnet.id}"
  key_name = "lan.pem"
  tags = {
    Name = "terraform"
  }
}

resource "aws_instance" "db-server" {
  ami = "ami-0d728fd4e52be968f"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.private_subnet.id}"
  key_name = "lan.pem"
  tags = {
    Name = "terraform_pvt"
  }
}
