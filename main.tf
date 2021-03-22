variable "checkly_api_key_main" {}

terraform {
  required_providers {
    checkly = {
      source = "checkly/checkly"
      version = "0.8.1"
    }
  }
}

provider "checkly" {
  api_key = var.checkly_api_key_main
}

resource "checkly_check" "example-check" {

  name                      = "Example Check on Main Account"
  type                      = "BROWSER"
  activated                 = true
  should_fail               = false
  frequency                 = 10
  double_check              = true
  ssl_check                 = false
  use_global_alert_settings = true
  locations = [
    "us-west-1",
    "eu-central-1"
  ]

  script = file("${path.module}/scripts/login.js")

}