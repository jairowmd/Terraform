# No Terraform, random_pet é uma função que gera um nome aleatório baseado em palavras comumente usadas em inglês. 
# Essa função é útil para criar identificadores únicos e mais amigáveis para recursos, evitando colisões de nomes.

resource "random_pet" "bucket" {
  length = 5
}