resource "aws_db_subnet_group" "default" {
name="main"
subnet_ids=[aws_subnet.database-subnet-1.id, aws_subnet.database-subnet-2.id]
tags={
Name="my db subnet group" 
}
}

resource "aws_db_instance" "default" {
allocated_storage=10
db_subnet_group_name=aws_db_subnet_group.default.id
engine="MySQL"
engine_version="8.0.39"
instance_class="db.t3.micro"
multi_az=true
db_name="mydb"
username="username"
password="password"
skip_final_snapshot=true
vpc_security_group_ids=[aws_security_group.database-sg.id]
}

