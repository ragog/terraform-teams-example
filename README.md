# Terraform Checkly multi-account setup

This example shows how to map different Terraform files to different API keys (and therefore Checkly accounts) to support multiple teams working together.

## How to run

Set up your API keys as environment variables:

```
export TF_VAR_checkly_api_key_main=<central team api key>
export TF_VAR_checkly_api_key_team1=<team 1 api key>
```

Plan and apply your config:

```
terraform plan
terraform apply
```