resource "aws_elb" "main-elb" {
  name = "main-elb"
  subnets = ["${aws_subnet.main-public-1.id}", "${aws_subnet.main-public-2.id}"]
  security_groups = ["${aws_security_group.sg.id}"]
  
  listener {
    instance_port = 3000
    instance_protocol = "http"
    lb_port = 3000
    lb_protocol = "http"
  }
  
  health_check {
    healthy_threshold = 5
    unhealthy_threshold = 5
    timeout = 20
    target = "HTTP:3000/weather"
    interval = 60
  }

  cross_zone_load_balancing = true
  connection_draining = true
  connection_draining_timeout = 400

  instances  = ["${aws_instance.machine_01.id}", "${aws_instance.machine_02.id}"]
  
  tags {
    Name = "main-elb"
  }
}
