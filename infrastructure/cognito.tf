resource "aws_cognito_user_pool" "social-manager-pool" {
  name                       = "social-manager-users"
  email_verification_subject = "Device Verification Code"
  email_verification_message = "Please use the following code {####}"

  admin_create_user_config {
    allow_admin_create_user_only = true
  }

  verification_message_template {
    default_email_option = "CONFIRM_WITH_CODE"
  }

  email_configuration {
    reply_to_email_address = "noreplay@fakeurl.com"
  }

  password_policy {
    minimum_length    = 10
    require_lowercase = true
    require_numbers   = true
    require_symbols   = false
    require_uppercase = true
  }

  schema {
    attribute_data_type      = "String"
    developer_only_attribute = false
    mutable                  = false
    name                     = "email"
    required                 = true

    string_attribute_constraints {
      min_length = 7
      max_length = 30
    }
  }

  tags = var.tags
}
