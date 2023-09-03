provider "aws" {
        region = "ap-south-1"
}
terraform {
	backend "s3" {
		bucket = "terraform-storage-bucket"
		key = "terraform.tfstate"
		region = "ap-south-1"
	}
}
resource "aws_instance" "new_inst" {
        ami = "ami-0f5ee92e2d63afc18"
        instance_type = "t2.micro"
	tags = {
		Name = "tf_new_inst"
		Env =  "new_dev_inst"


	}
}

