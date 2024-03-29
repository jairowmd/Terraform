# Criação do recurso S3
resource "aws_s3_bucket" "this" {
  bucket = "${random_pet.bucket.id}-${var.environment}"

  # as tags foram definidas no arquivo locals.tf que é um arquivo de variaveis locais
  tags = local.common_tags

}

# importa o backup criado na mao para o gerenciamento do terraform 
# na linha de comando depois devemos executar esse comando : terraform import aws_s3_bucket.manual meubucketcriadoconsoledaaws17032024
resource "aws_s3_bucket" "manual" {
  # (resource arguments)
  bucket = "meubucketcriadoconsoledaaws17032024"

  tags = {
    Criado    = "17/03/2024"
    importado = "17/03/2024"
    ManagedBy = "Terraform"
  }
}



# Subindo o arquivo ips.json para o bucket  
resource "aws_s3_bucket_object" "this" {
  bucket = aws_s3_bucket.this.bucket
  key    = "config/${local.ip_filepath}"
  source = local.ip_filepath
  etag   = filemd5(local.ip_filepath)

}

# terraform fmt - formata os arquivos
# terraform plan - verificar se esta correto o planejamento da mudança ou execução