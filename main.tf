resource "helm_release" "applications" {

  for_each = var.charts

  name = each.key

  repository = each.value.repo
  chart      = each.value.chart
  namespace  = each.value.namespace

  dynamic "set" {
    for_each = each.value.values
    content {
      name  = set.value.name
      value = set.value.value
    }
  }
}

