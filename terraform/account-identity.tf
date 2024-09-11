module "identity" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "vsubotskyi-aft-poc-identity@arturo.ai"
    AccountName               = "Identity"
    ManagedOrganizationalUnit = "AFT-Identity"
    SSOUserEmail              = "viacheslav.subotskyi@intellias.com"
    SSOUserFirstName          = "AFT"
    SSOUserLastName           = "Identity"
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

  account_customizations_name = "identity"
}
