FROM hashicorp/terraform:latest
MAINTAINER Darkjeff <darkjeff@dk-s.net>

ENV TERRAFORM_VERSION=latest
ENV TERRAGRUNT_VERSION=0.11.0
ENV TERRAGRUNT_TFPATH=/bin/terraform

RUN curl -sL https://github.com/gruntwork-io/terragrunt/releases/download/v$TERRAGRUNT_VERSION/terragrunt_linux_386 \
  -o /bin/terragrunt && chmod +x /bin/terragrunt

ENTRYPOINT ["/bin/terragrunt"]
