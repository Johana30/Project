resource "aws_eip" "eip-nat-gateway-a" {
  vpc    = true

  tags   = {
    Name = "ip1"
  }
}

resource "aws_eip" "eip-for-nat-gateway-b" {
  vpc    = true

  tags   = {
    Name = "ip2"
  }
}

resource "aws_nat_gateway" "nat-gateway_a" {
  allocation_id = aws_eip.eip-nat-gateway-a.id
  subnet_id     = aws_subnet.public_a.id

  tags   = {
    Name = "Nat-subnet_a"
  }
}

resource "aws_nat_gateway" "nat-gateway-b" {
  allocation_id = aws_eip.eip-for-nat-gateway-b.id
  subnet_id     = aws_subnet.public_b.id
  tags   = {
    Name = "Nat-subnet_b"
  }
}
/////////////
# Create Private Route Table 1 and Add Route Through Nat Gateway 1
# terraform aws create route table
# resource "aws_route_table" "private-route-table-1" {
#   vpc_id            = 

#   route {
#     cidr_block      = 
#     nat_gateway_id  = 
#   }

#   tags   = {
#     Name = 
#   }
# }

# # Associate Private Subnet 1 with "Private Route Table 1"
# # terraform aws associate subnet with route table
# resource "aws_route_table_association" "private-subnet-1-route-table-association" {
#   subnet_id         = 
#   route_table_id    = 
# }

# # Associate Private Subnet 3 with "Private Route Table 1"
# # terraform aws associate subnet with route table
# resource "aws_route_table_association" "private-subnet-3-route-table-association" {
#   subnet_id         = 
#   route_table_id    = 
# }

# # Create Private Route Table 2 and Add Route Through Nat Gateway 2
# # terraform aws create route table
# resource "aws_route_table" "private-route-table-2" {
#   vpc_id            = 

#   route {
#     cidr_block      = 
#     nat_gateway_id  = 
#   }

#   tags   = {
#     Name =
#   }
# }

# # Associate Private Subnet 2 with "Private Route Table 2"
# # terraform aws associate subnet with route table
# resource "aws_route_table_association" "private-subnet-2-route-table-association" {
#   subnet_id         = 
#   route_table_id    = 
# }

# # Associate Private Subnet 4 with "Private Route Table 2"
# # terraform aws associate subnet with route table
# resource "aws_route_table_association" "private-subnet-4-route-table-association" {
#   subnet_id         = 
#   route_table_id    =
# }