resource "aws_instance" "nxt_ec2_05" {
  ami = lookup(var.AMI_IDS, var.AWS_REGION)
  instance_type = "t2.micro"
  tags = {
    Name = var.NXT_EC2_INST_NAME
  }

  #TODO : multi line local-exec script.
  provisioner "local-exec" {
    command = "echo 'Instance ${aws_instance.nxt_ec2_05.tags.Name} created @ ${timestamp()}.'  > private_ip.txt"
  }

  provisioner "local-exec" {
    command = "echo 'Instance status : ${aws_instance.nxt_ec2_05.instance_state}.'  >> private_ip.txt"
  }

  provisioner "local-exec" {
    command = "echo 'Instance IP address: ${aws_instance.nxt_ec2_05.private_ip}.' >> private_ip.txt"
  }
}

output "instance-name" {
  value = aws_instance.nxt_ec2_05.tags.Name
}
output "instance-current-state" {
  value = aws_instance.nxt_ec2_05.instance_state
}
output "public-ip" {
  value = aws_instance.nxt_ec2_05.public_ip
}
output "private-ip" {
  value = aws_instance.nxt_ec2_05.private_ip
}