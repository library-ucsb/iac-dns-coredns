
module "module-library_workspace" {
  source  = "app.terraform.io/library-ucsb-core/module-library_workspace/tfc"
  version = "0.0.7"
  # insert required variables here
  name                  = var.repo_name
  description           = var.repo_description
  tfc_organization      = var.repo_tfc_org
  oauth_client_id       = var.repo_oauth_client_id
  github_organization   = var.repo_github_org
  tfc_working_directory = var.repo_tfc_working_directory  
}
