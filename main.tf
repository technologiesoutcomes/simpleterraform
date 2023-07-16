module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "technologiesoutcomes-simpleterraform-bucket-${var.env}"
  acl    = "private"

  control_object_ownership = true
  object_ownership         = "ObjectWriter"

  versioning = {
    enabled = true
  }
}

resource "aws_s3_bucket" "simples3" {
  bucket = "technologiesoutcomes-simpleterraform-bucket2-${var.env}"
  tags = {
    Name        = "technologiesoutcomes-simpleterraform-bucket-${var.env}"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "simpleS3Var" {
  bucket = "${var.name}-${var.env}"
  tags = {
    Name        = var.tag_name
    Environment = var.env
  }
}

resource "aws_s3_bucket" "simpleS3Var_new" {
  bucket = "${var.name_new}-${var.env}"
  tags = {
    Name        = var.tag_name
    Environment = var.env
  }
}
