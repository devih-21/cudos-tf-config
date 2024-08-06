module "cid_dashboards" {
  source = "../../terraform-modules/cid-dashboards"

    stack_name      = "Cloud-Intelligence-Dashboards-3"
    template_bucket = "cids-130506138320-shared" # Update with S3 bucket name
    stack_parameters = {
      "PrerequisitesQuickSight"            = "yes"
      "PrerequisitesQuickSightPermissions" = "yes"
      "QuickSightUser"                     = "TechXDataAdmin/vinh.khuat@techxcorp.com"
      "DeployCUDOSDashboard"               = "yes"
      "DeployCostIntelligenceDashboard"    = "yes"
      "DeployKPIDashboard"                 = "yes"
      "DeployTAODashboard"                 = "yes"
    }
}