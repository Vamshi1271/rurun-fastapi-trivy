data "template_file" "trivy_values_template" {
  template = file("${path.module}/trivy/values.yaml")
  vars = {
    namespace           = var.trivy_namespace
    image               = var.image
    memory_requests     = var.memory_requests
    cpu_requests        = var.cpu_requests
    memory_limits       = var.memory_limits
    cpu_limits          = var.cpu_limits
    min_replicas        = var.min_replicas
    max_replicas        = var.max_replicas
    host                = var.virtualservice_host
    gateway             = var.virtualservice_gateway
    mobius_deploymentid = var.mobius_deploymentid
    mobius_datacenter   = var.mobius_datacenter
    mobius_component    = var.mobius_component
  }
}

resource "helm_release" "trivy" {
  name       = "trivy"
  namespace  = var.trivy_namespace
  chart      = "${path.module}/trivy"
  values     = [data.template_file.trivy_values_template.rendered]
  wait       = true
  timeout    = 600
}