resource "aws_instance" "example" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"


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
