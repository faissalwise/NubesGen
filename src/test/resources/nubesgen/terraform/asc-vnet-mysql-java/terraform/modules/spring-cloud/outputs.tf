output "spring_cloud_service_name" {
  value       = local.spring_cloud_service_name
  description = "Azure Spring Cloud service name"
}

output "application_url" {
  value = azurerm_spring_cloud_app.application.url
}

output "application_caf_name" {
  value       = local.spring_cloud_app_name
  description = "The application name generated by the Azure Cloud Adoption Framework."
}

output "spring_cloud_service_ip" {
  value = data.azurerm_lb.asc_internal_lb.private_ip_address
  description = "Azure Spring Cloud internal load balancer IP address. Can be used to configure private DNS"
}

output "spring_cloud_service_app_fqdn" {
  value = azurerm_spring_cloud_app.application.fqdn
  description = "Application FQDN"
}
