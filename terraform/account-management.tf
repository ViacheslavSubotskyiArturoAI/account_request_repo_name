module "aft_management" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "vsubotskyi-aft-management-poc2@arturo.ai"
    AccountName               = "AFT-Management"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "viacheslav.subotskyi@intellias.com"
    SSOUserFirstName          = "Admin"
    SSOUserLastName           = "User"
  }

  account_tags = {
    "Test" = "yes"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp"
    change_reason       = "AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "test"
  }

  account_customizations_name = "aft-management"
}
