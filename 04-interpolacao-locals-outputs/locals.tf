# No Terraform, a seção "locals" (locais) é utilizada para criar variáveis locais, ou seja, variáveis que são definidas dentro do escopo de um módulo ou bloco
#  e que não são expostas para uso externo.

locals {

  ip_filepath = "ips.json"

  common_tags = {

    Service     = "Curso Terraform"
    ManageBy    = "Terraform"
    Environment = var.environment
    Owner       = "Jairo"

  }

}

