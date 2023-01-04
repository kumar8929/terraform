#####################################################################
## AWS Target Group
#####################################################################

resource "aws_lb_target_group" "red_tg" {
name = "red-tg"
port = 80
protocol = "HTTP"
vpc_id = data.aws_vpc.red_vpc.id
}
