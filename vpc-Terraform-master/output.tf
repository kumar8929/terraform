output "vpc_id" {
  value = aws_vpc.redvpc.id
}

output "cidr_vpc" {
  value = aws_vpc.redvpc.cidr_block
}

output "public_subnet_ids" {
  value = [aws_subnet.public.*.id]
}

output "private_subnet_ids" {
  value = aws_subnet.private_app.*.id
}

output "private_db_subnet_ids" {
  value = aws_subnet.private_db.*.id
}
