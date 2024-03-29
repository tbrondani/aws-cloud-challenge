resource "aws_instance" "example" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.super_key_pair.key_name
  security_groups = [aws_security_group.mega_sg.name]
  
  block_device {
    device_name = "/dev/xvda"
    volume_size = 10
    volume_type = "gp3"
  }

  block_device {
    device_name = "/dev/xvdb"
    volume_size = 5
    volume_type = "gp3"
  }
}

#dont forget to use your own public IP, 192.168.1.1 is just a placeholder.


resource "aws_security_group" "mega_sg" {
  name        = "external-acess"
  description = "Allow SSH and HTTP access"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["192.168.1.1/32"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
   cidr_blocks  = ["192.168.1.1/32"]

  }
}

resource "aws_key_pair" "super_key_pair" {
  key_name   = "my-key-pair"
  public_key = "ssh-rsa AAAABaaaaaaaaaaaaaaaa......"
}
