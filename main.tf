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

  # Variavel para regiao - definida no arquivo variable.tf
  region = var.aws_region
# Variavel para profile, uso padrao por isso esta zerado - definida no arquivo variable.tf
  profile = var.aws_profile
  # por padrao pega o profile padrao
  # nao precisei declarar o meu acessos a AWS pois ja configurei anteriormente
  # Variavel para regiao - definida no arquivo variable.tf

}

# criando instancia ECS na aws
resource "aws_instance" "web" {
  ami = var.instance_ami
# Variavel para tipo de instancia EC2 - definida no arquivo variable.tf
  instance_type = var.instance_type
# Variavel para tamanho da instancia EC2 - definida no arquivo variable.tf
  tags = var.instance_tags
# Variavel para as tags da instancia EC2 - definida no arquivo variable.tf
}


 # no caso adicionei as tags novas no mesmo aquivo e rodei 
 # no terminal rodei terraform plan -out="tfplan.out" - joga o comando que sera feito o deploy para um arquivo para verificação
 # no terminal rodei terraform validate - valida a sintaxe do comando
 # no terminal rodei  terraform apply "tfplan.out" para executar o out 


# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket
 # no terminal rodei um terraform validate para validar as alterações
 # no terminal rodei terraform fmt para formatar o arquivo de maneira correta
 # no terminal rodei terraform plan -out="tfplan.out" - joga o comando que sera feito o deploy para um arquivo para verificação
 # no terminal rodei terraform validate - valida a sintaxe do comando
 # no terminal rodei  terraform apply "tfplan.out" para executar o out 
 # para alterar nome do bucket ele destroi o antigo e cria um novo
 # terraform destroy