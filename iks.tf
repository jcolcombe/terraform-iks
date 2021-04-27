module "iks" {
  source  = "terraform-cisco-modules/iks/intersight"
  version = "0.9.20"
  
  # Infra Config Policy Information
  cluster_name = "iks-tenant-a"
  # cluster_action = "Deploy"
  vc_target_name   = "10.61.124.9"
  vc_portgroup     = [ "vlan99-99" ]
  vc_datastore     = "HX-NVME" 
  vc_cluster       = "HX-NVME"
  vc_resource_pool = ""
  vc_password      = var.vc_password

  # IP Pool Information
  ip_starting_address = "10.61.125.150"
  ip_pool_size        = "20"
  ip_netmask          = "255.255.255.0"
  ip_gateway          = "10.61.125.1"
  ip_primary_dns      = "10.61.124.15"
  ip_secondary_dns    = "10.61.124.16"

  # Network Configuration Settings
  domain_name         = "amslab.cisco.com"
  timezone            = "Europe/Amsterdam"

  # Cluster information
  ssh_user     = "iksadmin"
  ssh_key      = var.ssh_key
  worker_size  = "small"
  worker_count = 4
  master_count = 1
  # Organization
  organization = var.organization
}