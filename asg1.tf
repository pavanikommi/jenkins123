resource "aws_autoscaling_group" "example" {
  
 
  availability_zones = ["us-east-1"]
  min_size = var.min_size
  max_size = var.max_size
  launch_configuration = "lconfig"
}
