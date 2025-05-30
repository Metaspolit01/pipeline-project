provider "aws" {
    region = var.aws_region
  
}

resource "aws_instance" "ec2" {
    ami = var.ami_id["ubuntu"]
    instance_type = var.instance_type
    key_name = var.key_name
    tags = {
        Name = "pipeline"
    }
} 


