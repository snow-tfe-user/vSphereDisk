data "vsphere_datacenter" "dc" {
  name = "${var.datacenter}"
}

data "vsphere_datastore" "datastore" {
  name          = "${var.datastore}"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

resource "vsphere_virtual_disk" "lnDisk" {
  size         = 20
  vmdk_path    = "${var.diskname}"
  datacenter   = "${var.datacenter}"
  datastore    = "${var.datastore}"
  type         = "thin"
}
