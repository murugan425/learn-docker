resource "aws_instance" "nxt_ec2_02" {
  ami = lookup(var.AMI_IDS, var.AWS_REGION)
  instance_type = "t2.micro"
  tags = {
    Name = var.NXT_EC2_INST_NAME
  }
}