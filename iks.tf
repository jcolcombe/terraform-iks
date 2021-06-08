module "iks" {
  source              = "terraform-cisco-modules/iks/intersight"
  version             = "0.9.20"
  
  # Infra Config Policy Information
  cluster_name        = "cluster-a1"
  cluster_action      = "Delete"
  vc_target_name      = "gffa-vcenter.galaxy.cisco.com"
  vc_portgroup        = ["DV_VLAN1056"]
  vc_datastore        = "CCPdatastore"
  vc_cluster          = "GFFA-HX2-Cluster"
  vc_resource_pool    = "tenant-a"
  vc_password         = var.vc_password

  # IP Pool Information
  ip_starting_address = "10.100.56.140"
  ip_pool_size        = "20"
  ip_netmask          = "255.255.255.0"
  ip_gateway          = "10.100.56.1"
  ip_primary_dns      = "10.2.1.172"
  ip_secondary_dns    = "10.2.1.172"

  # Network Configuration Settings
  domain_name         = "galaxy.cisco.com"
  timezone            = "America/New_York"

  # Cluster information
  ssh_user            = "iksadmin"
  ssh_key             = var.ssh_key
  worker_size         = "small"
  worker_count        = 3
  master_count        = 1
  # Organization
  organization        = var.organization
}