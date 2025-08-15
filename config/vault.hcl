listener "tcp" {
  address     = "0.0.0.0:8202"
  cluster_address = "0.0.0.0:8203"
  tls_disable = true
}

storage "file" {
  path = "/vault/file"
}

ui = true

