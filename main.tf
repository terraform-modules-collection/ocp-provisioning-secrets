provider "vault" {}

data "vault_generic_secret" "minioCredentials" {
  path = "${var.secretMountPoint}/${var.minioCredentialsPath}"
}

data "vault_generic_secret" "ocpCredentials" {
  path = "${var.secretMountPoint}/${var.ocpCredentialsPath}"
}


output "minioServer" {
  value = data.vault_generic_secret.minioCredentials.data["minioServer"]
}
output "minioAccessKey" {
  value = data.vault_generic_secret.minioCredentials.data["minioAccessKey"]
}
output "minioSecretKey" {
  value = data.vault_generic_secret.minioCredentials.data["minioSecretKey"]
}

output "ocpPullSecret" {
  value = data.vault_generic_secret.ocpCredentials.data["ocpPullSecret"]
}
output "ocpSSHPubKey" {
  value = data.vault_generic_secret.ocpCredentials.data["ocpSSHPubKey"]
}
output "ocpCoreUserPassHash" {
  value = data.vault_generic_secret.ocpCredentials.data["ocpCoreUserPassHash"]

}
