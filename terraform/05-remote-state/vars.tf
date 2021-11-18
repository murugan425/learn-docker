variable NXT_EC2_INST_NAME {
  default = "nxt_test_ec2_05"
}

variable AWS_REGION {
  type = string
  default = "us-east-1"
}

variable AMI_IDS { type = map(string) }