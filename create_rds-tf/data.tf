data "aws_vpc" "red_vpc" {
  filter {
    name   = "tag:Name"
    values = ["red_vpc"]
  }
}
data "aws_subnet_ids" "available_db_subnet" {
  vpc_id = data.aws_vpc.red_vpc.id
  filter {
    name   = "tag:Name"
    values = ["red_database*"]
  }
}

data "aws_availability_zones" "available" {
  state = "available"
}
data "aws_security_group" "red_sg" {
  filter {
    name   = "tag:Name"
    values = ["red_security_group"]
  }
}
