provider "aws" {
  region = "eu-west-2"
}

module "aws_vpc" {
  source = "./modules/aws_vpc"
  region = "us-west-2"
  subnet_info = {
    names               = ["web", "web2", "web3", "web4"]
    public_subnet_names = ["web"]
  }

}

output "public_subnets" {
    value = module.aws_vpc.public_subnet_ids
}