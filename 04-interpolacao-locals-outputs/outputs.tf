# { No Terraform, você pode usar a seção output para definir valores que você deseja exportar após a execução do código. 
# Esses valores podem ser úteis para fornecer informações sobre os recursos criados ou para serem usados por outros módulos ou scripts externos. 


# value = aws_s3_bucket.this.bucket: Isso atribui o nome do bucket S3 criado para o valor de saída. 
#aws_s3_bucket.this se refere ao recurso do tipo aws_s3_bucket criado no código Terraform e .bucket é o atributo que contém o nome do bucket.
output "bucket_name" {
  value = aws_s3_bucket.this.bucket
}


#value = aws_s3_bucket.this.arn: Isso atribui o Amazon Resource Name (ARN) do bucket S3 criado para o valor de saída. Assim como no exemplo anterior, 
#aws_s3_bucket.this se refere ao recurso do tipo aws_s3_bucket criado no código Terraform e .arn é o atributo que contém o ARN do bucket.
output "bucket_arn" {
  value       = aws_s3_bucket.this.arn
  description = ""

}

#Esta linha define um valor de saída chamado "bucket_domain_name".
#value = aws_s3_bucket.this.bucket_domain_name: Isso atribui o nome de domínio do bucket S3 criado para o valor de saída. Assim como nos exemplos anteriores,
#aws_s3_bucket.this se refere ao recurso do tipo aws_s3_bucket criado no código Terraform e .bucket_domain_name é o atributo que contém o nome de domínio do bucket.
output "bucket_domain_name" {
  value = aws_s3_bucket.this.bucket_domain_name

}

#Esta linha define um valor de saída chamado "ips_file_path".
#value = "${aws_s3_bucket.this.bucket}/${aws_s3_bucket_object.this.key}": 
#Isso atribui o caminho completo para o objeto no bucket S3 criado. Aqui, ${aws_s3_bucket.this.bucket} é usado para referenciar o nome do bucket e ${aws_s3_bucket_object.this.key} 
#é usado para referenciar a chave (nome) do objeto dentro do bucket. 
#O ${...} é uma interpolação, permitindo que você concatene strings e referências de recursos.

output "ips_file_path" {
  value = "${aws_s3_bucket.this.bucket}/${aws_s3_bucket_object.this.key}"
}

