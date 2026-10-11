output "vpc_endpoint_private_dns_private_dns_enabled" {
  description = "Map of private_dns_enabled values across all vpc_endpoint_private_dns, keyed the same as var.vpc_endpoint_private_dns"
  value       = { for k, v in aws_vpc_endpoint_private_dns.vpc_endpoint_private_dns : k => v.private_dns_enabled if v.private_dns_enabled != null }
}
output "vpc_endpoint_private_dns_region" {
  description = "Map of region values across all vpc_endpoint_private_dns, keyed the same as var.vpc_endpoint_private_dns"
  value       = { for k, v in aws_vpc_endpoint_private_dns.vpc_endpoint_private_dns : k => v.region if v.region != null && length(v.region) > 0 }
}
output "vpc_endpoint_private_dns_vpc_endpoint_id" {
  description = "Map of vpc_endpoint_id values across all vpc_endpoint_private_dns, keyed the same as var.vpc_endpoint_private_dns"
  value       = { for k, v in aws_vpc_endpoint_private_dns.vpc_endpoint_private_dns : k => v.vpc_endpoint_id if v.vpc_endpoint_id != null && length(v.vpc_endpoint_id) > 0 }
}

