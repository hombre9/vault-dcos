listener "tcp" {
  address = "0.0.0.0:8200"
  tls_cert_file = "/tmp/server-cert.pem"
  tls_key_file = "/tmp/server-key.pem"
}

backend "etcd" {
  address  = "http://localhost:2379"
  etcd_api = "v2"
  path = "vault"
  ha_enabled = true
  redirect_addr = "vault.marathon.mesos:8200"
}

disable_mlock = true
