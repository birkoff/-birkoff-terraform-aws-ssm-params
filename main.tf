resource "aws_ssm_parameter" "this" {
  for_each = {for key, value in var.parameters : key => value}
  name     = each.value.name
  type     = try(each.value.type, "String")
  value    = each.value.value
}