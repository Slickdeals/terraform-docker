FROM debian:10.1

LABEL org.opencontainers.image.source https://github.com/codayblue/terraform-docker

RUN apt-get update -y && apt-get install -y git openssh-client build-essential && rm -rf /var/lib/apt/lists/*

COPY --from=hashicorp/terraform:1.0.4 /bin/terraform /bin/terraform

CMD ["bash"]