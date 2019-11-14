FROM hashicorp/terraform:0.12.13 as terraform-installer

FROM debian:10.1

RUN apt-get update -y && apt-get install -y git openssh-client build-essential && rm -rf /var/lib/apt/lists/*

COPY --from=terraform-installer /bin/terraform /bin/terraform

CMD ["bash"]