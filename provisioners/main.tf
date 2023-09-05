resource "aws_instance" "web" {
  ami           = data.aws_ami.example.id
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-07010737da7cff878"]

  tags = {
    Name = "HelloWorld"
  }

  provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = "centos"
      password = "DevOps321"
      host     = self.public_ip
    }
    inline = [
      "sudo labauto ansible",
      "ansible-pull -i localhost, -U https://github.com/sairm21/roboshop-ansible-v1 -e role_name=Frontend"
    ]
  }
}


data "aws_ami" "example" {
  owners = ["973714476881"]
  most_recent = true
}