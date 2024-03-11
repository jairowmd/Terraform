# criação de bucket simples via terraform ja com o AWS cli configurado com o provider


# versao do terraform e do aplicativo aws para terraform 
terraform {
  required_version = "1.7.4"

required_providers {
aws = {
    source = "hashicorp/aws"
    version = "5.39.1"
}
  
}

}



#  Using previously-installed hashicorp/aws v5.39.1

provider "aws" {
  region = "us-east-1"
  # por padrao pega o profile padrao
  # nao precisei declarar o meu acessos a AWS pois ja configurei anteriormente
}

resource "aws_s3_bucket" "bucket-terraform-teste" {
  bucket = "meu-tf-teste-bucket-jairo"
  acl = "private"

  tags = {
    Name        = "Meu bucket"
    Environment = "Dev"
    Manageby = "Terraform"
  }
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket
