variable "avi_version" {
  default = "21.1.3"
}
variable "avi_controller_ips" {
  default = "10.206.114.247"
}
variable "avi_license" {
  default = "ENTERPRISE_WITH_CLOUD_SERVICES"
}
variable "avi_tenant" {
  default = "admin"
}
variable "avi_password" {}
variable "avi_dns_server_ips" {
  default = "8.8.8.8, 8.8.4.4"
}
#max 3 NTP servers
variable "avi_ntp_server_ips" {
  default = "38.229.54.9 , 216.240.36.24"
}
variable "ntp_servers" {
  type    = list(any)
  default = ["0.us.pool.ntp.org", "1.us.pool.ntp.org", "2.us.pool.ntp.org", "3.us.pool.ntp.org"]
}
variable "dns_servers" {
  default = ["8.8.8.8", "8.8.4.4", "1.1.1.1"]
}
variable "mail_server_tls" {
  default = false
}
variable "email" {
  default = "admin@avinetworks.com"
}
variable "mail_server" {
  default = "localhost"
}
variable "mail_server_port" {
  default = 25
}
variable "mail_type" {
  default = "SMTP_LOCAL_HOST"
}
variable "banner" {
  default = "Avi Demo with Terraform"
}
variable "search_domain" {
  default = "io.local"
}
