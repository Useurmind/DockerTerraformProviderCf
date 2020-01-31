FROM hashicorp/terraform:light
# the terraform image uses root as user which has home directory /root
COPY ./terraform-provider-cloudfoundry_linux_amd64 /terraform.d/plugins/linux_amd64/terraform-provider-cloudfoundry