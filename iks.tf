module "iks-amslab" {
  #source              = "../../terraform-intersight-iks"
  source              = "app.terraform.io/Cisco-IST-TigerTeam/iks-amslab/intersight"
  version             = "0.9.23"

  # Infra Config Policy Information
  cluster_name        = "RTP-Sandpit01"
  cluster_action      = "Deploy"
  vc_target_name      = "vc2.dcv.svpod"
  vc_portgroup        = [ "sandpit|IST|demo" ]
  vc_datastore        = "sandpit-ds1"
  vc_cluster          = "RTP-Sandpit"
  vc_resource_pool    = "IST-VMs"
  vc_password         = var.vc_password

  # IP Pool Information
  ip_starting_address = "100.64.2.140"
  ip_pool_size        = "10"
  ip_netmask          = "255.255.255.0"
  ip_gateway          = "100.64.2.1"
  ip_primary_dns      = "198.19.254.82"
  ip_secondary_dns    = "198.19.255.137"
  ip_primary_ntp      = "198.19.255.137"

  # Network Configuration Settings
  domain_name         = "dcv.svpod"
  timezone            = "Europe/London"
  #http_proxy          = "proxy.esl.cisco.com"
  #https_proxy         = "proxy.esl.cisco.com"
  #http_proxy_port     = 80
  #https_proxy_port    = 80

  # Cluster information
  ssh_user            = "iksadmin"
  ssh_key             = var.ssh_key
  worker_size         = "small"
  worker_count        = 2
  master_count        = 1
  # Organization
  organization        = var.organization
}
