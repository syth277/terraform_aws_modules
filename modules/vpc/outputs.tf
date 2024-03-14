output "public_subnet_id_1" {
     value = aws_subnet.my_public_subnet_1.id
}

output "public_subnet_id_2" {
     value = aws_subnet.my_public_subnet_2.id
}

output "private_subnet_id_1" {
     value = aws_subnet.my_private_subnet_1.id
}

output "private_subnet_id_2" {
     value = aws_subnet.my_private_subnet_2.id
}

output "prod_vpc" {
     value = aws_vpc.my_vpc.id
}