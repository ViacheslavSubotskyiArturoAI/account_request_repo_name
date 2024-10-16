module "test_apps_us" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "vsubotskyi-poc2-test-apps-us@arturo.ai"
    AccountName               = "Test-Apps-US"
    ManagedOrganizationalUnit = "Non-Prod"
    SSOUserEmail              = "viacheslav.subotskyi@intellias.com"
    SSOUserFirstName          = "Admin"
    SSOUserLastName           = "User"
  }

  account_tags = {
    "Environment" = "Test-Apps-US"
  }

  change_management_parameters = {
    change_requested_by = "Admin"
    change_reason       = "Initialization"
  }

  custom_fields = {
    group = "Test-Apps-US"
  }

  account_customizations_name = "test-apps-us"
}
