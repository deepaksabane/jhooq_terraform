resource "aws_instance" "deepu" {
    ami = var.ami
    instance_type = var.instance_type
    count = var.instance_count
    associate_public_ip_address = var.enable_public_ip

    tags = {
      Name = var.Project_Environment["project"]
      Environment = var.Project_Environment["Environment"]
    }

}

resource "aws_iam_user" "user_iam" {
    count = "${length(var.username)}"
    name = "${element(var.username,count.index)}"
  
}