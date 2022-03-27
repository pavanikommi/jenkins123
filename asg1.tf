resource "aws_launch_configuration" "example" {
image_id = "ami-0bbf29c4ca3d5addb"
instance_type = "t2.micro"
}
resource "aws_autoscaling_group" "example" {
  
  
 /* availability_zones   = ["${var.availability_zone}"]
  min_size = var.min_size
   max_size = var.max_size */
  avilability_zones = ["us-east-1"]
  min_size = 2
  max_size = 5
  launch_configuration = "lconfig"
}
