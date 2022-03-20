# Environment Variables
#
variable "vsphere_username" {}
variable "vsphere_password" {}
variable "avi_controller_url" {}
#
# Other Variables
#
variable "vsphere_server" {
  default = "vcenter.rm.ht"
  #default = "wdc-06-vc12.oc.vmware.com"
}

variable "folder_name" {
  default = "avi-ctl"
}
variable "vcenter_dc" {
  default = "RM-DC"
  #default = "wdc-06-vc12"
}

variable "vcenter_cluster" {
  default = "remo-cluster"
  #default = "wdc-06-vc12c01"
}

variable "vcenter_datastore" {
  default = "vsan"
  #default = "wdc-06-vc12c01-vsan"
}

variable "vcenter_network" {
  default = "DPort-mgmt"
  #default = "vxw-dvs-34-virtualwire-3-sid-6120002-wdc-06-vc12-avi-mgmt"
}

variable "content_library" {
  default = {
    basename = "content_library_tf_"
  }
}

variable "dhcp" {
  default = true
}

variable "avi_ip4_addresses" {
  default = "[192.168.100.116, 192.168.100.117, 192.168.100.118]"
}

variable "network_mask" {
  default = "255.255.253.0"
}

variable "gateway4" {
  default = "192.168.100.254"
}

variable "avi_version" {
  default = "21.1.3"
}

variable "avi_cluster" {
  default = false
}

variable "avi_dns_server_ips" {
    default = "8.8.8.8, 192.168.100.20"
    #default = "8.8.8.8, 10.206.8.130, 10.206.8.131"
}

variable "avi_ntp_server_ips" {
  default = "17.253.16.253, 17.253.26.125"
  #default = "10.206.8.130, 10.206.8.131, 10.206.8.132"
}

variable "avi_current_password" {
}

variable "avi_tenant" {
  default = "admin"
}

variable "controller" {
  default = {
    cpu = 8
    memory = 24768
    disk = 128
    wait_for_guest_net_timeout = 4
  }
}
