output "parameter_names" {
  value = [for p in aws_ssm_parameter.this : p.name]
}

output "parameter_values" {
  value = [for p in aws_ssm_parameter.this : p.value]
}
