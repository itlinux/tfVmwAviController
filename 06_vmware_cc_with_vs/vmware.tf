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
  tenant_ref   = var.tenant
}

data "avi_errorpagebody" "default_error_page" {
  name = "Custom-Error-Page"
}
resource "avi_errorpageprofile" "cop_errorpage" {
  name = "CoP-Error-Page"
 error_pages {
    enable              = true
    error_page_body_ref = data.avi_errorpagebody.default_error_page.id
    index               = 0

    match {
      match_criteria = "IS_IN"
      status_codes = [
        400,
        401,
        403,
        503,
      ]
    }
  }
}
