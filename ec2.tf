resource "aws_instance" "public_subnet-1" {
ami ="ami-012967cc5a8c9f891"
instance_type="t2.micro"
count=1
key_name="joel"
vpc_security_group_ids=["${aws_security_group.demosg.id}"]
subnet_id=aws_subnet.public_subnet-1.id
associate_public_ip_address=true
user_data="${file("data.sh")}"
tags={
Name="My Public Instance"
}
}

resource "aws_instance" "public_subnet-2" {
ami="ami-012967cc5a8c9f891"
instance_type="t2.micro"
count=1
key_name="joel"
vpc_security_group_ids=["${aws_security_group.demosg.id}"]
subnet_id=aws_subnet.public_subnet-2.id
associate_public_ip_address=true
user_data="${file("data.sh")}"
tags={
Name="My Public Instance 2"
}
}

