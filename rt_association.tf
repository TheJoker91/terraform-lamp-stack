# Create Web Subnet association with Web route table
resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.lamp-subnet.id
  route_table_id = aws_route_table.web-rt.id
}