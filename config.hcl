listener "tcp" {
  address = "0.0.0.0:8200"
  tls_cert_file = "/tmp/server-cert.pem"
  tls_key_file = "/tmp/server-key.pem"
}

backend "consul" {
	address = "127.0.0.1:8500"
	path = "vault"
	scheme = "http"
	advertise_addr = "http://vault.service.consul:8200"
}

disable_mlock = true
