
# Output nameservers
output "route53_nameservers" {
  value = aws_route53_zone.fampay_zone.name_servers
}

output "acm_certificate_arn" {
  value = aws_acm_certificate.fampay_cert.arn
}