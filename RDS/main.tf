resource "aws_db_instance" "default" {
  allocated_storage    =  var.allocated_storage                        #10
  db_name              =  var.db_name                                  #"mydb"
  engine               =  var.engine                                   #"mysql"
  engine_version       =  var.engine_version                           #"8.0"
  instance_class       =  var.instance_class                           #"db.t3.micro"
  username             =  var.username                                 #"foo"
  password             =  var.password                                 #"foobarbaz"
  parameter_group_name =  var.parameter_group_name                     #"default.mysql8.0"
  skip_final_snapshot  =  var.skip_final_snapshot                      #true
}

