module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["eu-west-1a", "eu-west-1b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24" ]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24","10.0.104.0/24","10.0.105.0/24"]
  database_subnets = ["10.0.21.0/24", "10.0.22.0/24"]

  enable_nat_gateway  = true
  single_nat_gateway  = false
  one_nat_gateway_per_az = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
