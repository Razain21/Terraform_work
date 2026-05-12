output "vpc_id" {
  value = aws_vpc.main.id
}

output "subnet_ids" {
  value = {
    for key, subnet in aws_subnet.main : key => subnet.id
  }
}