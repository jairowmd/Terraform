# Criação de variaveis aula 13
# REF : https://developer.hashicorp.com/terraform/language/values/variables

# Variavel para regiao
variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"

}

# Variavel para profile, uso padrao por isso esta zerado
variable "aws_profile" {
  type        = string
  description = ""
  default     = "default"

}

# Variavel para tipo de ambiente
variable "environment" {
  type        = string
  description = ""
  default     = "dev"

}
