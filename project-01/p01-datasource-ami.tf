# Get latest AMI ID Ubuntu Linux
data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]
  # filter {
  #   name   = "name"
  #   values = ["ubuntu-jammy-*"]
  # }
  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}
