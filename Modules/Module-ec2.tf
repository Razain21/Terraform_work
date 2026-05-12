module "ec2-instance" {
source  = "terraform-aws-modules/ec2-instance/aws"
version = "6.4.0"
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  name = "single-instance"
  ami = ami-01b40e1bcccae197a
  instance_type = "t3.micro"
  vpc_security_group_ids = [module.vpc_security_group_id]
  subnet_id     = module.vpc.public_subnets[0]

  tags = {
    Name = "Module_Project"
    Environment = "dev"
  }
}