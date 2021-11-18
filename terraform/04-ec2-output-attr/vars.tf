variable NXT_EC2_INST_NAME {
  default = "nxt_test_ec2_02"
}

variable AWS_REGION {
  type = string
  default = "us-east-1"
}

variable AWS_REGIONS { type = list(string) }

variable AMI_IDS { type = map(string) }