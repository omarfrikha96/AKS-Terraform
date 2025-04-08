output "aks_cluster_name" {
  description = "Name of the AKS cluster"
  value       = module.aks.cluster_name
}

output "aks_cluster_endpoint" {
  description = "Endpoint of the AKS cluster"
  value       = module.aks.kube_config.0.cluster_server
}

output "region" {
  description = "Azure region"
  value       = var.AZURE_DEFAULT_REGION
}