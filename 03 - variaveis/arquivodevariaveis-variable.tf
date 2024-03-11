# Criação de variaveis aula 13
# REF : https://developer.hashicorp.com/terraform/language/values/variables

# Variavel para regiao
variable "aws_region" {
  type = string
  description = ""
  default = "us-east-1"
  
}

# Variavel para profile, uso padrao por isso esta zerado
variable "aws_profile" {
  type = string
  description = ""
  default = "default"
  
}

# Variavel para tipo de instancia EC2, peguei a gratis la na aws 
variable "instance_ami" {
  type = string
  description = ""
  default = "ami-0f403e3180720dd7e"
  
}

# Variavel para tamanho da instancia EC2, peguei a gratis la na aws 
variable "instance_type" {
  type = string
  description = ""
  default = "t2.micro"
  
}

# Variavel para as tags da instancia EC2 
variable "instance_tags" {
  type = map(string)
  description = ""
  default = {

    # Name - nome da instancia
    Name = "Linux"
    Project = "Curso AWS com terraform"
  }
  
}
