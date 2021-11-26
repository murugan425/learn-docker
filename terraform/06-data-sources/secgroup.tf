data "aws_ip_ranges" us_ips {
  regions  = ["us-east-1", "us-east-2", "us-west-1", "us-west-2"]
  services = ["ec2"]
}

resource "aws_security_group" inbound_usa {
  name = "from_usa_region"
  ingress {
    from_port = 443
    protocol  = "tcp"
    to_port   = 443
    cidr_blocks = slice(data.aws_ip_ranges.us_ips.cidr_blocks, 0, 50)
  }
  tags = {
    create_date = data.aws_ip_ranges.us_ips.create_date
    sync_token = data.aws_ip_ranges.us_ips.sync_token
  }
}