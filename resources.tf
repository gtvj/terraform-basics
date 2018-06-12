resource "aws_vpc" "environment-example" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support = true
  tags {
    Name = "terraform-aws-vpc-example"
  }
}

resource "aws_security_group" "subnetsecurity" {
  vpc_id = "${aws_vpc.environment-example.id}"

  ingress {

    cidr_blocks = [
      "${aws_vpc.environment-example.cidr_block}"
    ]

    from_port = 80
    to_port = 80
    protocol = "tcp"
  }
}