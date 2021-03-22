variable "checkly_api_key_team1" {}

provider "checkly" {
  alias = "team"
  api_key = var.checkly_api_key_team1
}

resource "checkly_check" "example-check-team" {


  provider = checkly.team
  name                      = "Example Check on team Account"
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

  script = file("${path.module}/scripts/checkout.js")

}