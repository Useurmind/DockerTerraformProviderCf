FROM hashicorp/terraform:light
COPY ./terraform-provider-cloudfoundry_linux_amd64 /terraform.d/plugins/linux_amd64/terraform-provider-cloudfoundry
RUN chmod +x /terraform.d/plugins/linux_amd64/terraform-provider-cloudfoundry
RUN apk add --no-cache bash curl
# also install cf cli, it will come in handy
RUN curl -L "https://packages.cloudfoundry.org/stable?release=linux64-binary&source=github" | tar -zx
RUN cp cf /usr/local/bin/