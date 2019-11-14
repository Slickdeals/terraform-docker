FROM hashicorp/terraform:0.12.13 as terraform-installer

FROM alpine:latest

COPY --from=terraform-installer /bin/terraform /bin/terraform

ENTRYPOINT []

CMD ["sh"]