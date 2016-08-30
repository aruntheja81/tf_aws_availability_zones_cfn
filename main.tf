resource "aws_cloudformation_stack" "availability_zones" {
  name = "availability-zones"
  template_body = "${file("${path.module}/availability-zones.json")}"
}

output "primary" {
    value = "${ element(split(",", aws_cloudformation_stack.availability_zones.outputs.AvailabilityZones), 0) }"
}
output "secondary" {
    value = "${ element(split(",", aws_cloudformation_stack.availability_zones.outputs.AvailabilityZones), 1) }"
}
output "tertiary" {
    value = "${ element(split(",", aws_cloudformation_stack.availability_zones.outputs.AvailabilityZones), 2) }"
}
output "list_all" {
    value = "${aws_cloudformation_stack.availability_zones.outputs.AvailabilityZones}"
}
