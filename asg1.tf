resource "aws_launch_configuration" "example" {
image_id = "ami-0ff843af0e81f1886"
instance_type = "t2.micro"
}
resource "aws_autoscaling_group" "example" {
  
 
  avilability_zones = ["us-east-1"]
  min_size = 2
  max_size = 5
  launch_configuration = "lconfig"
}
