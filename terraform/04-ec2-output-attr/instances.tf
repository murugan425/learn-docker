resource "aws_instance" "nxt_ec2_04" {
  ami = lookup(var.AMI_IDS, var.AWS_REGION)
  instance_type = "t2.micro"
  tags = {
    Name = var.NXT_EC2_INST_NAME
  }
  provisioner "local-exec" {
    command = "echo 'Instance is ${aws_instance.nxt_ec2_04.instance_state} @ ip address: ${aws_instance.nxt_ec2_04.private_ip}' >> private_ip.txt"
  }

  provisioner "local-exec" {
    command = "echo ${aws_instance.nxt_ec2_04.public_ip} >> public_ip.txt"
  }
}

output "instance-current-state" {
  value = aws_instance.nxt_ec2_04.instance_state
}
output "public-ip" {
  value = aws_instance.nxt_ec2_04.public_ip
}
output "private-ip" {
  value = aws_instance.nxt_ec2_04.private_ip
}