# Create Web layer route table
resource "aws_route_table" "web-rt" {
  vpc_id = aws_vpc.lamp-vpc.id


  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "lamp WebRT"
  }
}