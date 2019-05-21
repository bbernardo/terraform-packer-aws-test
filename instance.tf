resource "aws_instance" "machine_01" {
  ami           = "${var.AMI_ID}"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.main-public-1.id}"
  vpc_security_group_ids = ["${aws_security_group.sg.id}"]
  key_name = "${aws_key_pair.mykeypair.key_name}"
}

resource "aws_instance" "machine_02" {
  ami           = "${var.AMI_ID}"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.main-public-2.id}"
  vpc_security_group_ids = ["${aws_security_group.sg.id}"]
  key_name = "${aws_key_pair.mykeypair.key_name}"
}
