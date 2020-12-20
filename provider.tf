provider "vsphere" {
  user           = "${var.user_name}"
  password       = "${var.password}"
  vsphere_server = "${var.server}"

  #If you have a self-signed cert
  allow_unverified_ssl = true
}
