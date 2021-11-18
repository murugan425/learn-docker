terraform {
  backend s3 {
    bucket = "nxt-tf-state-demo"
    key = "05-remote-state"
    region = "us-east-1"
  }
}