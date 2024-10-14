module "shared_data_au" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "vsubotskyi-poc2-shared-data-au@arturo.ai"
    AccountName               = "Shared-Data-AU"
    ManagedOrganizationalUnit = "Shared-Data"
    SSOUserEmail              = "viacheslav.subotskyi@intellias.com"
    SSOUserFirstName          = "Admin"
    SSOUserLastName           = "User"
  }

  account_tags = {
    "Environment" = "Shared-Data-AU"
  }

  change_management_parameters = {
    change_requested_by = "Admin"
    change_reason       = "Initialization"
  }

  custom_fields = {
    group = "Shared-Data-AU"
  }

  account_customizations_name = "shared-data-au"
}
