

provider "aws" {
  region = "ap-southeast-1"
  alias  = "southeast1"
}

module "cur_destination" {
  source = "../../terraform-modules/cur-setup-destination"

  source_account_ids = ["130506138320"]
  create_cur         = false # Set to true to create an additional CUR in the aggregation account

  # Provider alias for us-southeast-1 must be passed explicitly (required for CUR setup)
  providers = {
    aws.southeast1 = aws.southeast1
  }
}