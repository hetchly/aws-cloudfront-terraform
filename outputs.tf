# CloudFront Distribution
output "aws_cloudfront_distribution_id" {
  value       = "${aws_cloudfront_distribution.this.id}"
  description = "The identifier for the distribution. For example: EDFDVBD632BHDS5."
}

output "aws_cloudfront_distribution_arn" {
  value       = "${aws_cloudfront_distribution.this.arn}"
  description = "The ARN (Amazon Resource Name) for the distribution. For example: arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5, where 123456789012 is your AWS account ID."
}

output "aws_cloudfront_distribution_caller_reference" {
  value       = "${aws_cloudfront_distribution.this.caller_reference}"
  description = "Internal value used by CloudFront to allow future updates to the distribution configuration."
}

output "aws_cloudfront_distribution_status" {
  value       = "${aws_cloudfront_distribution.this.status}"
  description = "The current status of the distribution. Deployed if the distribution's information is fully propagated throughout the Amazon CloudFront system."
}

output "aws_cloudfront_distribution_active_trusted_signers" {
  value       = "${aws_cloudfront_distribution.this.active_trusted_signers}"
  description = "The key pair IDs that CloudFront is aware of for each trusted signer, if the distribution is set up to serve private content with signed URLs."
}

output "aws_cloudfront_distribution_domain_name" {
  value       = "${aws_cloudfront_distribution.this.domain_name}"
  description = "The domain name corresponding to the distribution. For example: d604721fxaaqy9.cloudfront.net."
}

output "aws_cloudfront_distribution_last_modified_time" {
  value       = "${aws_cloudfront_distribution.this.ast_modified_time}"
  description = "The date and time the distribution was last modified."
}

output "aws_cloudfront_distribution_in_progress_validation_batches" {
  value       = "${aws_cloudfront_distribution.this.in_progress_validation_batches}"
  description = "The number of invalidation batches currently in progress."
}

output "aws_cloudfront_distribution_etag" {
  value       = "${aws_cloudfront_distribution.this.etag}"
  description = "The current version of the distribution's information. For example: E2QWRUHAPOMQZL."
}

output "aws_cloudfront_distribution_hosted_zone_id" {
  value       = "${aws_cloudfront_distribution.this.hosted_zone_id}"
  description = "The CloudFront Route 53 zone ID that can be used to route an Alias Resource Record Set to. This attribute is simply an alias for the zone ID Z2FDTNDATAQYW2."
}