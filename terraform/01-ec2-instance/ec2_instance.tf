provider aws {
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
  region = var.AWS_REGION
}

variable AWS_REGION {
  type = string
}

variable AMI_IDS {
  type = map(string)
  default = {
    us-east-1: "ami-0133407e358cc1af0"
  }
}

resource "aws_instance" "nxt_ec2_01" {
  ami = var.AMI_IDS[var.AWS_REGION]
  instance_type = "t2.micro"
}