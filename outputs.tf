output "ALB_dns_name" {
  value = aws_lb.my-alb.dns_name
}

output "CloudFront" {
  value = aws_cloudfront_distribution.cf_dist.domain_name
  
}