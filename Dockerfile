FROM vault:0.7.0

COPY config.hcl /vault/config/config.hcl

CMD ["server", "-config=/vault/config"]
