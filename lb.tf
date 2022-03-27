resource "aws_lb" "test" {
  name               = var.name
  internal           = var.internal
  load_balancer_type = var.load_balancer_type
  subnets            = ["${var.subnet_id1}", "${var.subnet_id2}"]

}

