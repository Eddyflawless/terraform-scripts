
## Prerequisites
1.  Install terraform using homebrew (macOs) `brew tap tap hashicorp/tap && brew install hashicorp/tap/terraform`
2.  Verfiy if installed `terraform -help`
3.  To upgrade terraform `brew update`

## Get more info on a terraform command |  terraform -help <command>
eg:  `terraform -help plan`

## Initialize terraform to download the required plugin(s)
`terraform init`

## Preview the changes terraform will make
`terraform plan`

## Provision your declarations
`terraform apply`

## Format your configurations for easy readability
`terraform fmt`

## Validate your definitions
`terraform validate`

## Pass variables to apply command
eg: `terraform apply -var 'instance_name=ExampleAppServerInstance2'`