 terraform {
  backend "s3" {
    bucket = "scstt-consul-sd"
    key    = "deploy-infrastructure"
    region = "us-east-1"
  }
}

