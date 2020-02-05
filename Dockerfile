FROM hashicorp/terraform:light
COPY ./terraform-provider-cloudfoundry_linux_amd64 /terraform.d/plugins/linux_amd64/terraform-provider-cloudfoundry
RUN chmod +x /terraform.d/plugins/linux_amd64/terraform-provider-cloudfoundry