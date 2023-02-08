locals {
  zones = jsonencode([for zone in var.zones : format("arn:aws:route53:::hostedzone/%s", zone)])
}
