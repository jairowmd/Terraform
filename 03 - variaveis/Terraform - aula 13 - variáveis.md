![image](https://github.com/jairowmd/Terraform/assets/105881237/b425d395-c3e2-4101-9440-45a36774a45f)

Maquina do free tier

ami-0f403e3180720dd7e

De <https://us-east-1.console.aws.amazon.com/ec2/home?region=us-east-1#LaunchInstances:> 

t2.micro



Doc terraform criação de EC2 https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance


EXEMPLO:

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}

####################################

resource "aws_instance" "web" {
  ami           =  ami-0f403e3180720dd7e
  instance_type = "t2.micro"

  tags = {
    Name = "Jairo-MAQUINA-GRATIS"
  }
}


![image](https://github.com/jairowmd/Terraform/assets/105881237/03a0138c-4003-4082-915b-01662698f2c8)

