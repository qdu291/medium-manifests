## Remote S3 Data Block
terraform {
  backend "s3" {
    bucket = "atlantisterraform-dungo"
    key    = "terraform/atlantisterraform/state"
    region = "ap-southeast-1"
  }
}

## Create an EC2 Instance
resource "aws_instance" "web" {
  ami               = "ami-0851b76e8b1bce90b"
  instance_type     = "t3.medium"
  availability_zone = "ap-southeast-1b"
  tags = {
    Name = "atlantis-medium"
  }
}
