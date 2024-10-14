module "shared_data_us" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "vsubotskyi-poc2-shared-data-us@arturo.ai"
    AccountName               = "Shared-Data-US"
    ManagedOrganizationalUnit = "Shared-Data"
    SSOUserEmail              = "viacheslav.subotskyi@intellias.com"
    SSOUserFirstName          = "Admin"
    SSOUserLastName           = "User"
  }

  account_tags = {
    "Environment" = "Shared-Data-US"
  }

  change_management_parameters = {
    change_requested_by = "Admin"
    change_reason       = "Initialization"
  }

  custom_fields = {
    group = "Shared-Data-US"
  }

  account_customizations_name = "shared-data-us"
}
