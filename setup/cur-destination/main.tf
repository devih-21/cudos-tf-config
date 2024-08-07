provider "aws" {
  region = "ap-southeast-1"
}

provider "aws" {
  region = "us-east-1"
  alias  = "useast1"
}

module "cur_destination" {
  source = "../../terraform-modules/cur-setup-destination"

  source_account_ids = ["130506138320"]
  create_cur         = true # Set to true to create an additional CUR in the aggregation account

  # Provider alias for us-east-1 must be passed explicitly (required for CUR setup)
  providers = {
    aws.useast1 = aws.useast1
  }
}