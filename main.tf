# S3 Bucket
resource "aws_s3_bucket" "this" {
  bucket = "jrdalino-myproject-customer-web"
  acl    = "private"
}

locals {
  s3_origin_id = "MyProjectCostumerWeb"
}

# CloudFront Origin Access Identity
resource "aws_cloudfront_origin_access_identity" "this" {
  comment = "MyProjectCostumerWeb"
}

# CloudFront Distribution
resource "aws_cloudfront_distribution" "this" {
  # aliases
  # comment
  # custom_error_response
  default_cache_behavior {
    allowed_methods  = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    cached_methods   = ["GET", "HEAD"]
    compress         = true
    default_ttl      = 3600
    # field_level_encryption_id
    forwarded_values {
      query_string = true
      cookies {
        forward = "none"
      }
    }
    # lambda_function_association
    max_ttl          = 86400
    min_ttl          = 0
    # path_pattern
    # smooth_streaming 
    target_origin_id = "${local.s3_origin_id}"
    # trusted_signers
    viewer_protocol_policy = "allow-all"
  }
  default_root_object = "index.html"
  enabled = true
  is_ipv6_enabled = true
  # http_version 
  # logging_config
  # ordered_cache_behavior
  origin {
    domain_name = "${aws_s3_bucket.this.bucket_regional_domain_name}"
    origin_id   = "${local.s3_origin_id}"
    s3_origin_config {
      origin_access_identity = "${aws_cloudfront_origin_access_identity.this.cloudfront_access_identity_path}"
    }
  }
  # origin_group 
  price_class = "PriceClass_All"
  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }
  # tags
  viewer_certificate {
    cloudfront_default_certificate = true
  }
  # web_acl_id
  retain_on_delete = false
  # wait_for_deployment = true
}