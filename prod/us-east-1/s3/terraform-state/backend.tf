terraform {
    backend "s3" {
        bucket = "justin-dc3-dev-terraform-state"
        key    = "prod/us-east-1/s3/terraform-state/terraform.tfstate"
        region = "us-east-1"
        profile = "terraform@448905052389"
    }
}
