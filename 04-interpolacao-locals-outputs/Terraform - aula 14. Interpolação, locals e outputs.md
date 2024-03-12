14. Interpolação, locals e outputs

De <https://tqi.udemy.com/course/aws-com-terraform/learn/lecture/25939334#overview> 


 A interpolação no Terraform refere-se ao processo de incorporar dinamicamente valores ou expressões dentro de strings ou atributos em seu código Terraform. Isso permite que você crie configurações mais flexíveis e dinâmicas, adaptando-as com base em variáveis, dados de recursos ou expressões.

De <https://chat.openai.com/c/7a42e88f-6334-45e7-b1fb-174285a8a87f> 



No Terraform, a seção "locals" (locais) é utilizada para criar variáveis locais, ou seja, variáveis que são definidas dentro do escopo de um módulo ou bloco e que não são expostas para uso externo. Essas variáveis locais podem ser úteis para simplificar a lógica do código, realizar cálculos intermediários ou simplificar a leitura do código.
A declaração de "locals" é feita no bloco "locals" dentro do seu código Terraform. Aqui está um exemplo básico de como você pode usar "locals":



De <https://chat.openai.com/c/7a42e88f-6334-45e7-b1fb-174285a8a87f> 


Output Values

No Terraform, você pode usar a seção output para definir valores que você deseja exportar após a execução do código. Esses valores podem ser úteis para fornecer informações sobre os recursos criados ou para serem usados por outros módulos ou scripts externos. Aqui está um exemplo simples de como usar output no Terraform:

De <https://chat.openai.com/c/7a42e88f-6334-45e7-b1fb-174285a8a87f> 

Explique essa linha de codigo abaixo

output "bucket_name" {
 value = aws_s3_bucket.this.bucket
}


output "bucket_arn" {
 value = aws_s3_bucket.this.arn
 description = ""

}


output "bucket_domain_name" {
 value = aws_s3_bucket.this.bucket_domain_name

}

output "ips_file_path" {
  value = "${aws_s3_bucket.this.bucket}/${aws_s3_bucket_object.this.key}"
}

Essas linhas de código estão usando a seção output do Terraform para definir valores que serão exportados após a execução do código. Aqui está uma explicação detalhada para cada linha:
1. output "bucket_name":
	• Esta linha define um valor de saída chamado "bucket_name".
	• value = aws_s3_bucket.this.bucket: Isso atribui o nome do bucket S3 criado para o valor de saída. aws_s3_bucket.this se refere ao recurso do tipo aws_s3_bucket criado no código Terraform e .bucket é o atributo que contém o nome do bucket.
2. output "bucket_arn":
	• Esta linha define um valor de saída chamado "bucket_arn".
	• value = aws_s3_bucket.this.arn: Isso atribui o Amazon Resource Name (ARN) do bucket S3 criado para o valor de saída. Assim como no exemplo anterior, aws_s3_bucket.this se refere ao recurso do tipo aws_s3_bucket criado no código Terraform e .arn é o atributo que contém o ARN do bucket.
3. output "bucket_domain_name":
	• Esta linha define um valor de saída chamado "bucket_domain_name".
	• value = aws_s3_bucket.this.bucket_domain_name: Isso atribui o nome de domínio do bucket S3 criado para o valor de saída. Assim como nos exemplos anteriores, aws_s3_bucket.this se refere ao recurso do tipo aws_s3_bucket criado no código Terraform e .bucket_domain_name é o atributo que contém o nome de domínio do bucket.
4. output "ips_file_path":
	• Esta linha define um valor de saída chamado "ips_file_path".
	• value = "${aws_s3_bucket.this.bucket}/${aws_s3_bucket_object.this.key}": Isso atribui o caminho completo para o objeto no bucket S3 criado. Aqui, ${aws_s3_bucket.this.bucket} é usado para referenciar o nome do bucket e ${aws_s3_bucket_object.this.key} é usado para referenciar a chave (nome) do objeto dentro do bucket. O ${...} é uma interpolação, permitindo que você concatene strings e referências de recursos.
Esses valores de saída podem ser úteis para fornecer informações sobre os recursos criados ou para serem utilizados por outros módulos ou scripts Terraform, após a execução do código.

De <https://chat.openai.com/c/7a42e88f-6334-45e7-b1fb-174285a8a87f> ![image](https://github.com/jairowmd/Terraform/assets/105881237/2b59b2d1-0ca0-477e-aee0-dde1390fefd3)
