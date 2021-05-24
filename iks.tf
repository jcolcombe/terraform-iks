module "iks" {
  source              = "terraform-cisco-modules/iks/intersight"
  version             = "0.9.20"
  
  # Infra Config Policy Information
  cluster_name        = "cluster-b1"
  # cluster_action    = "Deploy"
  vc_target_name      = "vcenter-amslab.cisco.com"
  vc_portgroup        = [ "vm-network-99" ]
  vc_datastore        = "HX-ACI" 
  vc_cluster          = "HX-ACI"
  vc_resource_pool    = ""
  vc_password         = var.vc_password

  # IP Pool Information
  ip_starting_address = "10.61.125.210"
  ip_pool_size        = "10"
  ip_netmask          = "255.255.255.0"
  ip_gateway          = "10.61.125.1"
  ip_primary_dns      = "10.61.124.15"
  ip_secondary_dns    = "10.61.124.16"

  # Network Configuration Settings
  domain_name         = "amslab.cisco.com"
  timezone            = "Europe/Amsterdam"

  # Cluster information
  ssh_user            = "iksadmin"
  ssh_key             = var.ssh_key
  worker_size         = "small"
  worker_count        = 2
  master_count        = 1
  # Organization
  organization        = var.organization
}