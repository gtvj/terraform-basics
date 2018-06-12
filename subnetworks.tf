resource "aws_subnet" "subnet1" {
  cidr_block = "${cidrsubnet(aws_vpc.environment-example.cidr_block, 3, 1)}"
  vpc_id = "${aws_vpc.environment-example.id}"
  availability_zone = "eu-west-2a"
}

resource "aws_subnet" "subnet2" {
  cidr_block = "${cidrsubnet(aws_vpc.environment-example.cidr_block, 2, 2)}"
  vpc_id = "${aws_vpc.environment-example.id}"
  availability_zone = "eu-west-2b"
}
