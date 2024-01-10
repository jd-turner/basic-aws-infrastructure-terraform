#Subnets for the entire infrastructure.

#Public Subnets

resource "aws_subnet" "public_1a" {
  vpc_id            = aws_vpc.private-network.id
  cidr_block        = "10.16.1.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true
  depends_on        = [aws_internet_gateway.inet_provider]

  tags = {
    Name = "public-subnet-1a"
  }
}


resource "aws_subnet" "public_1b" {
  vpc_id            = aws_vpc.private-network.id
  cidr_block        = "10.16.2.0/24"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = true
  depends_on        = [aws_internet_gateway.inet_provider]

  tags = {
    Name = "public-subnet-1b"
  }
}


resource "aws_subnet" "public_1c" {
  vpc_id            = aws_vpc.private-network.id
  cidr_block        = "10.16.3.0/24"
  availability_zone = "us-east-1c"
  map_public_ip_on_launch = true
  depends_on        = [aws_internet_gateway.inet_provider]

  tags = {
    Name = "public-subnet-1c"
  }
}


#Private Subnets


resource "aws_subnet" "private_1a" {
  vpc_id            = aws_vpc.private-network.id
  cidr_block        = "10.16.4.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "private-subnet-1a"
  }
}

resource "aws_subnet" "private_1b" {
  vpc_id            = aws_vpc.private-network.id
  cidr_block        = "10.16.5.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "private-subnet-1b"
  }
}

resource "aws_subnet" "private_1c" {
  vpc_id            = aws_vpc.private-network.id
  cidr_block        = "10.16.6.0/24"
  availability_zone = "us-east-1c"

  tags = {
    Name = "private-subnet-1c"
  }
}


#Database subnets

resource "aws_subnet" "database_1a" {
  vpc_id            = aws_vpc.private-network.id
  cidr_block        = "10.16.7.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "datebase-subnet-1a"
  }
}

resource "aws_subnet" "database_1b" {
  vpc_id            = aws_vpc.private-network.id
  cidr_block        = "10.16.8.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "datebase-subnet-1b"
  }
}

resource "aws_subnet" "database_1c" {
  vpc_id            = aws_vpc.private-network.id
  cidr_block        = "10.16.9.0/24"
  availability_zone = "us-east-1c"

  tags = {
    Name = "datebase-subnet-1c"
  }
}




#Spare subnets.


resource "aws_subnet" "spare_1a" {
  vpc_id            = aws_vpc.private-network.id
  cidr_block        = "10.16.10.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "spare-subnet-1a"
  }
}


resource "aws_subnet" "spare_1b" {
  vpc_id            = aws_vpc.private-network.id
  cidr_block        = "10.16.11.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "spare-subnet-1b"
  }
}

resource "aws_subnet" "spare_1c" {
  vpc_id            = aws_vpc.private-network.id
  cidr_block        = "10.16.12.0/24"
  availability_zone = "us-east-1c"

  tags = {
    Name = "spare-subnet-1c"
  }
}
