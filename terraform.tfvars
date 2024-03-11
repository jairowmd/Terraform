# Criação de variaveis aula 13
# REF : https://developer.hashicorp.com/terraform/language/values/variables
# Arquivo proprio para referenciar variaveis no terraform

#Environment variables
#The terraform.tfvars file, if present.
#The terraform.tfvars.json file, if present.
#Any *.auto.tfvars or *.auto.tfvars.json files, processed in lexical order of their filenames.


# Variavel para regiao
 aws_region = "us-east-1"

# Variavel para profile, uso padrao por isso esta zerado
aws_profile  = "default"
  
# Variavel para tipo de instancia EC2, peguei a gratis la na aws 
instance_ami  = "ami-0f403e3180720dd7e"
  
# Variavel para tamanho da instancia EC2, peguei a gratis la na aws 
instance_type = "t2.micro"
  