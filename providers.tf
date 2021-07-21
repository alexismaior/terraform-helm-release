provider "helm" {
  kubernetes {
    config_path = var.kubeconfig_path
    insecure     = true
  }
}
