# Configure the AWS Provider
provider "aws" {
  region     = "us-west-2"
  access_key = "AKIA2H3MQTZPGGEEFQ4C"
  secret_key = "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"
}

module "vpc_module" {
  source = "./vpc-module"
  vpc-cidr="20.0.0.0/16"
  public_subnet="20.0.1.0/24"
  private_subnet="20.0.2.0/24"
}