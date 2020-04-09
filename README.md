# Docker TerraformProviderCf

Terraform provider for usage with cloud foundry.
This terraform provider was compiled from the sources found on https://github.com/cloudfoundry-community/terraform-provider-cf.
It is compiled from a pre v0.11.0 state.
In addition to v0.10.0 it contains

- sso authentication which is required for some deployments.
- service broker guid filter for services
- data source for user defined service instances

__Update:__

- Tested the v0.11.0 provider. It is still missing the data source for user defined service instances. But the code is in dev and will probably be part of the next relase 0.12.0.

## Docker Image

Use the docker image and copy the cloudfoundry provider into your project directory like this (assumes you are in your project folder):

```
cp -r /terraform.d .
```

Start terraforming with the cloudfoundry provider. No further provider installation necessary.

```
terraform init
terraform plan
```

## Installation

Put the exe file into the path `%APPDATA%/terraform.d/plugins` or `~/terraform.d/plugins/linux_amd64` for a linux with arch x86_64 (see https://www.terraform.io/docs/plugins/basics.html).

Remove the os and architecture part from the name so that it is called `terraform-provider-cloudfoundry(.exe)`.

On linux for the root user (e.g. in docker) the plugin needs to go into `/terraform.d/plugins/linux_amd64`.

## NOTICE

Should deprecate after v0.12 is release.
