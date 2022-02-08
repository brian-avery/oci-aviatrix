#Variables declared in this file must be declared in the marketplace.yaml

############################
#  Hidden Variable Group   #
############################
variable "tenancy_ocid" {
}

variable "region" {
}

variable "mp_listing_id" {
  default = "ocid1.appcataloglisting.oc1..aaaaaaaavalzcaxbs4hwta4uefnkdh7fjgd3uuw7lwlk6pn2uvzglrn3zt2a"
}

variable "mp_listing_resource_id" {
  default = "ocid1.image.oc1.iad.aaaaaaaazz3fb6dytuepqasqjepqjg3rproebhvoreitq4vquc2bdvbqwaza"
}

variable "mp_listing_resource_version" {
  default = "5.0.2"
}

############################
#  Compute Configuration   #
############################

variable "vm_display_name" {
  description = "Instance Name"
  default     = "controller"
}

variable "vm_compute_shape" {
  description = "Compute Shape"
  default     = "VM.Standard2.2" //2 cores
}

variable "availability_domain" {
  default     = 1
  description = "OCI Availability Domains: 1,2,3  (subject to region availability)"
}

variable "ssh_public_key" {
  description = "SSH Public Key"
}

############################
#  Network Configuration   #
############################

variable "network_strategy" {
  default = "Create New VCN and Subnet"
}

variable "vcn_id" {
  default = ""
}

variable "vcn_display_name" {
  description = "VCN Name"
  default     = "aviatrix-vcn"
}

variable "vcn_cidr_block" {
  description = "VCN CIDR"
  default     = "10.0.0.0/16"
}

variable "vcn_dns_label" {
  description = "VCN DNS Label"
  default     = "aviatrix"
}

variable "subnet_type" {
  description = "Choose between private and public subnets"
  default     = "Use Public Subnet"
}

variable "subnet_span" {
  description = "Choose between regional and AD specific subnets"
  default     = "Regional Subnet"
}

variable "subnet_id" {
  default = ""
}

variable "subnet_display_name" {
  description = "Subnet Name"
  default     = "controller-subnet"
}

variable "subnet_cidr_block" {
  description = "Subnet CIDR"
  default     = "10.0.0.0/24"
}

variable "subnet_dns_label" {
  description = "Subnet DNS Label"
  default     = "management"
}

############################
# Additional Configuration #
############################

variable "compartment_ocid" {
  description = "Compartment where infrastructure resources will be created"
}

variable "nsg_whitelist_ip" {
  description = "Network Security Groups - Whitelisted CIDR block for ingress communication: Enter 0.0.0.0/0 or <your IP>/32"
  default     = "0.0.0.0/0"
}

variable "nsg_display_name" {
  description = "Network Security Groups - Name"
  default     = "controller-security-group"
}

variable "routetable_display_name" {
  description = "Route table Name"
  default     = "controller-route-table"
}
