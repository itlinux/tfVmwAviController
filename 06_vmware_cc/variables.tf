variable "avi_username" {
  default = "admin"
}

variable "avi_password" {
}

variable "vcenter_datacenter" {
  default = "wdc-06-vc12"
}

variable "vm_datastore" {
  default = ""
}
variable "cloud_name" {
  default = "vcenter"
}
variable "vcenter_network" {
  default = "vxw-dvs-34-virtualwire-255-sid-6120254-wdc-06-vc12-avi-internal-mgmt"
}

variable "vsphere_privilege" {
  default = "WRITE_ACCESS"
}

variable "vsphere_user" {
  default = "aviuser6"
}

variable "vsphere_password" {
}

variable "vsphere_url" {
  default = "10.206.12.11"
}

variable "avi_version" {
  default = "21.1.3"
}
variable "tenant" {
  default = "admin"
}
variable "avi_controller" {
  default = "10.206.114.247"
}

variable "avi_license" {
  default = "ENTERPRISE_WITH_CLOUD_SERVICES"
}
variable "vcenter_license_type" {
  default = "LIC_CORES"
}
