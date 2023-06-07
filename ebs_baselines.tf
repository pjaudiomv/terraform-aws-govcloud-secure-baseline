# --------------------------------------------------------------------------------------------------
# EBS Baseline
# --------------------------------------------------------------------------------------------------

module "ebs_baseline_us-gov-west-1" {
  count  = contains(var.target_regions, "us-gov-west-1") ? 1 : 0
  source = "./modules/ebs-baseline"

  providers = {
    aws = aws.us-gov-west-1
  }
}

module "ebs_baseline_us-gov-west-2" {
  count  = contains(var.target_regions, "us-gov-west-2") ? 1 : 0
  source = "./modules/ebs-baseline"

  providers = {
    aws = aws.us-gov-west-2
  }
}
