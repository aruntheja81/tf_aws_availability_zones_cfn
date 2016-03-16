# tf_aws_availability_zones_cfn

Terraform module to get the AZs you have access to programatically
using cloudformation.

## Outputs:

  * primary - The primary AZ (always defined)
  * secondary - The secondary AZ (always defined)
  * tertiary - The third AZ (may not be defined!)
  * list_all - A comma seperated list of all AZs

## Example:

In your terraform code, add something like this:

    module "az" {
      source = "github.com/terraform-community-modules/tf_aws_availability_zones_cfn"
    }

    resource "aws_subnet" "primary-front" {
      availability_zone = "${module.az.primary}"
    }

# CREDIT

The idea (and most of the code) for this module was produced by _gozer_ in #terraform on irc.

# LICENSE

Apache2 - See the included LICENSE file for more details.

