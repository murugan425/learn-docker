resource aws_key_pair nxt-aws-ssh-key {
  key_name   = var.PRIVATE_KEY_FILE
  public_key = file(var.PUBLIC_KEY_FILE)
  tags = {
    Name = var.NXT_SSH_KEY_NAME
  }
}

resource aws_instance nxt_ec2_03 {
  ami = lookup(var.AMI_IDS, var.AWS_REGION)
  instance_type = "t2.micro"
  key_name = aws_key_pair.nxt-aws-ssh-key.key_name
  tags = {
    Name = var.NXT_EC2_INST_NAME
  }

  provisioner file {
    source      = "nginx_script.sh"
    destination = "/tmp/nginx_script.sh"
  }

  provisioner remote-exec {
    inline = [
      "chmod +x /tmp/nginx_script.sh",
      "sed -i -e 's/\r$//' /tmp/nginx_script.sh",  # Remove the spurious CR characters.
      "sudo /tmp/nginx_script.sh",
    ]
  }

  connection {
    type        = "ssh"
    host        = coalesce(self.public_ip, self.private_ip)
    user        = var.INSTANCE_USERNAME
    private_key = file(var.PRIVATE_KEY_FILE)
  }
}