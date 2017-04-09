listener "tcp" {
  address = "0.0.0.0:8200"
  tls_cert_file = "/tmp/server-cert.pem"
  tls_key_file = "/tmp/server-key.pem"
}

storage "etcd" {
  address  = "http://localhost:2379"
  etcd_api = "v2"
  path = "vault"
}

max_lease_ttl = "24h"
default_lease_ttl = "24h"
