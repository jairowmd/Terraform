# criação de bucket simples via terraform ja com o AWS cli configurado com o provider

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

# C:\terraform>
#  terraform init
#  terraform plan
