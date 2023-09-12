output "public_rtb_id" {
    description = "Id of the Public Route Tables"
    value = aws_route_table.public_attach_rtb[*].id
}

output "private_rtb_id" {
    description = "Id of the Private Route Tables"
    value = aws_route_table.private_attach_rtb[*].id
}
