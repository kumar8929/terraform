####################################################################
# Data source
####################################################################

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
    values = ["red_public_subnet*"]
  }
}
data "aws_security_group" "red_sg" {
  filter {
    name = "tag:Name"
    values = ["red_security_group"]
  }
}
data "template_file" "user_data" {
  template = file("./user-data.sh")
}

data "aws_ami" "amazon_linux_2" {
 most_recent = true
 filter {
   name   = "owner-alias"
   values = ["amazon"]
 }
 filter {
   name   = "name"
   values = ["amzn2-ami-hvm*"]
 }
 owners = ["amazon"]
}
