variable "kubeconfig_path" {
  description = "Path to the Kubernetes configuration file"
  type        = string
  default     = "~/.kube/config"
}

variable "trivy_namespace" {
  description = "Namespace where FastAPI will be deployed"
  type        = string
}

variable "memory_requests" {
  type    = string
}

variable "cpu_requests" {
  type    = string
}

variable "memory_limits" {
  type    = string
}

variable "cpu_limits" {
  type    = string
}

variable "min_replicas" {
  type    = number
}

variable "max_replicas" {
  type    = number
}

variable "virtualservice_host" {
  type    = string
}

variable "image" {
  type    = string
}

variable "virtualservice_gateway" {
  type    = string
}

variable "mobius_deploymentid" {
  description = "Global deployment ID for all namespaces"
  type        = string
}

variable "mobius_datacenter" {
  description = "Global datacenter label for all namespaces"
  type        = string
}

variable "mobius_component" {
  description = "Component label for the DockerHub secret"
  type        = string
}