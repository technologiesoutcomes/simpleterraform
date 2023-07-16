terraform {
  backend "s3" {
    encrypt = true
    key     = "simpleterraform.tfstate"
    region  = "eu-west-1"
    #dynamodb_table = "technologiesoutcomes-terraform-backend"
  }
}
