# birkoff-terraform-aws-ssm-params

```
module "ssm_params" {
  source     = "../ssm-parameters-store"
  parameters = {
    1 = {
      name  = "/app/documents-bucket"
      value = module.document_files.s3_bucket_id
    }
    2 = {
      name  = "/app/ambda-execution-role"
      value = module.lambda_execution_role.role_arn
    }
  }
}

```
