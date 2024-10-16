module "test_inference_us" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "vsubotskyi-poc2-test-inference-us@arturo.ai"
    AccountName               = "Test-Inference-US"
    ManagedOrganizationalUnit = "Non-Prod"
    SSOUserEmail              = "viacheslav.subotskyi@intellias.com"
    SSOUserFirstName          = "Admin"
    SSOUserLastName           = "User"
  }

  account_tags = {
    "Environment" = "Test-Inference-US"
  }

  change_management_parameters = {
    change_requested_by = "Admin"
    change_reason       = "Initialization"
  }

  custom_fields = {
    group              = "Test-Inference-US"
    deployTriggerCount = 1 # dummy change used to initiate an automatic account customization apply
  }

  account_customizations_name = "test-inference-us"
}
