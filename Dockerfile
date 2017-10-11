FROM vault:0.8.3

COPY config.hcl /vault/config/config.hcl

CMD ["server", "-config=/vault/config"]
