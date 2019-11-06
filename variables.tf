variable "name" {
    description = "The prefix that will be applied to resources managed by this module"
    default     = "influx"
}
variable "ami" {
    description = "The AMI ID to deploy"
}

variable "data_instances" {
    description = "The number of data nodes to run"
}

variable "meta_instances" {
    description = "The number of meta nodes to run"
}

variable "tags" {
    description = "Tags to be applied to all resources managed by this module"
    type = "map"
}

variable "subnet_ids" {
    type        = "list"
    description = "The subnet ID for servers, data-nodes will be equally distributed accross these subnets"
}

variable "instance_type" {
    description = "The AWS Instance type. For example, m2.large"
}

variable "vpc_id" {
    description = "VPC ID for instances and security groups"
}

variable "key_name" {
    description = "Key name for new hosts"
}

variable "zone_id" {
    description = "The private DNS zone to create records for hosts"
}

variable "data_disk_size" {
    description = "The size of the data disks to provision, for data nodes only"
    default = 300
}

variable "data_disk_iops" {
    description = "The number of IOPs for the io1 type volume"
    default = 4000
}

variable "wal_disk_size" {
    description = "The size of the data disks to provision, for data nodes only"
    default = 100
}

variable "wal_disk_iops" {
    description = "The number of IOPs for the io1 type volume"
    default = 3000
}
variable "hh_disk_size" {
    description = "The size of the data disks to provision, for data nodes only"
    default = 100
}
variable "security_groups" {
    type        = "list"
    description = "Extra security groups to apply to all hosts, useful for bastion host access"
    default     = []
}

variable "user_data" {
    description = "User data script for all instances"
    default     = ""
}

variable "data_disk_device_name" {
    description = "The name of the device to attach to the data-nodes"
    default  = "/dev/xvdh"
}
variable "wal_disk_device_name" {
    description = "The name of the device to attach to the meta-nodes"
    default  = "/dev/sdc"
}
variable "hh_disk_device_name" {
    description = "The name of the device to attach to the meta-nodes"
    default  = "/dev/sdd"
}
variable "meta_disk_device_name" {
    description = "The name of the device to attach to the meta-nodes"
    default  = "/dev/xvdh"
}
