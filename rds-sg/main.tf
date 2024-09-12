module "mysql_security_group" {
  source  = "terraform-aws-modules/security-group/aws//modules/mysql"
  version = "~> 5.0"
  name = "RDS-SG"
  

}
