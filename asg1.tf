resource "aws_launch_configuration" "example" {
image_id = "ami-0bbf29c4ca3d5addb"
instance_type = "t2.micro"
}
resource "aws_autoscaling_group" "example" {
  ##launch_configuration = ["terraform-20220325123959001600000001"]
  ##launchtemplate_id = var.lt
  availability_zones   = ["${var.availability_zone}"]
  min_size = var.min_size
  max_size = var.max_size
  # (...)
  launch_configuration = "lconfig"
}
