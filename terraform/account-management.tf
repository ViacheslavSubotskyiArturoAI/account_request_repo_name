module "management" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "vsubotskyi@arturo.ai"
    AccountName               = "Management"
    ManagedOrganizationalUnit = "Root"
#    SSOUserEmail              = "vsubotskyi@arturo.ai"
#    SSOUserFirstName          = "AFT"
#    SSOUserLastName           = "Management"
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

  account_customizations_name = "management"
}
