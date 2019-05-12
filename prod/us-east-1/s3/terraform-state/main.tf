provider "aws" {
    region                  = "us-east-1"
    shared_credentials_file = "/Users/jgluchowski/.aws/credentials"
    profile                 = "terraform@448905052389"
}

resource "aws_s3_bucket" "justin-dc3-dev-terraform-state" {
    bucket = "justin-dc3-dev-terraform-state"

    versioning {
        enabled = true
    }

    lifecycle {
        prevent_destroy = true
    }
}

output "aws_s3_bucket.justin-dc3-dev-terraform-state.arn" {
    value = "${aws_s3_bucket.justin-dc3-dev-terraform-state.arn}"
}
