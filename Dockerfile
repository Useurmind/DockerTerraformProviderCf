FROM hashicorp/terraform:light
LABEL maintainer="Useurmind"

ENV PROVIDER_CF_VERSION="v0.11.0"

RUN apk add --no-cache bash
 
RUN wget https://github.com/cloudfoundry-community/terraform-provider-cf/releases/download/${PROVIDER_CF_VERSION}/terraform-provider-cloudfoundry_linux_amd64 \
    && mkdir -p /terraform.d/plugins/linux_amd64/ \
    && mv terraform-provider-cloudfoundry_linux_amd64 /terraform.d/plugins/linux_amd64/terraform-provider-cloudfoundry \
    && chmod +x /terraform.d/plugins/linux_amd64/terraform-provider-cloudfoundry