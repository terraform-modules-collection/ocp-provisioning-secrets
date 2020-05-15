variable "secretMountPoint" {
  type = string
  default = "ocp-cluster-provisioning"
}

variable "minioCredentialsPath" {
  type = string
  default = "minio"
}

variable "ocpCredentialsPath" {
  type = string
  default = "ocp"
}
