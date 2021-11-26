terraform {
  backend s3 {
    bucket = "nxt-tf-state-demo"
    key = "06-data-sources"
    region = "us-east-1"
  }
}