data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name = "name"

    values = [
      "ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*",
    ]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = [
    "099720109477",
  ]
}

resource "aws_instance" "secondserver" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "${var.instance-type}"

  tags = {
    Name = "identifiertag"
  }

  subnet_id = "${aws_subnet.subnet1.id}"
}
