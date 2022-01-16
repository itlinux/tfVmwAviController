provider "avi" {
  avi_username   = var.avi_username
  avi_password   = var.avi_password
  avi_controller = var.avi_controller
  avi_tenant     = var.tenant
  avi_version    = var.avi_version
}
resource "avi_cloud" "vmware_cloud_tf" {
  name         = var.cloud_name
  vtype        = "CLOUD_VCENTER"
  dhcp_enabled = true
  vcenter_configuration {
    username                 = var.vsphere_user
    datacenter               = var.vcenter_datacenter
    management_network       = var.vcenter_network
    privilege                = var.vsphere_privilege
    vcenter_url              = var.vsphere_url
    password                 = var.vsphere_password
    deactivate_vm_discovery =  "false"
  }
  license_tier = var.avi_license
  license_type = var.vcenter_license_type
  tenant_ref   = "admin"
}
