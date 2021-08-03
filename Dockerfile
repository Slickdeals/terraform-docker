FROM debian:10.1

RUN apt-get update -y && apt-get install -y git openssh-client build-essential && rm -rf /var/lib/apt/lists/*

COPY --from=hashicorp/terraform:0.12.31 /bin/terraform /bin/terraform

CMD ["bash"]