variable "api_key" {
  type = string
  description = "API Key Id from Intersight"
}
variable "secretkey" {
  type = string
  description = "The path to your secretkey for Intersight OR the your secret key as a string"
}
variable "organization" {
  type = string
  description = "Organization Name"
  default = "default"
}
variable "vcenter_name" {
  type = string
  description = "The name of your vCenter Target as you see it in Intersight (could be an IP address)"
}

variable "Passphrase" {
  type = string
  description = "The Passphrase for the administrator@vsphere.local user of your vCenter environment"
}

variable "ssh_keys" {
  type = string
  description = "The ssh_key for the IKS cluster"
}
