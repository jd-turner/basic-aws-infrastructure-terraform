resource "aws_vpc" "private-network" {
  cidr_block                       = "10.16.0.0/16"
  instance_tenancy                 = "default"
  enable_dns_hostnames             = true
  assign_generated_ipv6_cidr_block = true

  tags = {
    Name = "on-prem-vpc"
  }

}

resource "aws_internet_gateway" "inet_provider" {
  vpc_id = aws_vpc.private-network.id

  tags = {
    Name = "on-prem- provider"
  }

}

resource "aws_route_table" "routing" {
  vpc_id = aws_vpc.private-network.id


  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.inet_provider.id
  }

  tags = {
    Name = "on-prem-route-table"
  }
}

resource "aws_subnet" "subnet" {
  vpc_id            = aws_vpc.private-network.id
  cidr_block        = "10.16.0.0/18"
  availability_zone = "us-east-1a"
  depends_on        = [aws_internet_gateway.inet_provider]

  tags = {
    Name = "on-prem-subnet"
  }
}
