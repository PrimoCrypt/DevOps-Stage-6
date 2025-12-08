terraform {
  backend "s3" {
    bucket         = "leothatguy-s3-hng" # REPLACE WITH YOUR BUCKET NAME
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-1"
    use_lockfile   = true
    encrypt        = true
  }
}
