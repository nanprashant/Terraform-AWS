provider "aws" {
  region = "us-east-1"
}

module "ec2" {
  source = "./modules/ec2_instance"
  ami_value = "ami-053b0d53c279acc90" # replace this
  instance_type_value = "t2.micro"
  subnet_id_value = "subnet-080a902726e93a221" # We are in main branch
}
