
resource "aws_s3_bucket" "static_website" {
  bucket = var.bucket_name
  tags = {
    Name = var.bucket_name_tag
  }
}

resource "aws_s3_bucket_website_configuration" "static_website" {
  bucket = aws_s3_bucket.static_website.id

  index_document {
    suffix = var.index_document
  }

  error_document {
    key = var.error_document
  }
}

resource "aws_s3_bucket_versioning" "static_website" {
  bucket = aws_s3_bucket.static_website.id
  versioning_configuration {
    status = var.versioning
  }
}


resource "aws_s3_bucket_ownership_controls" "static_website" {
  bucket = aws_s3_bucket.static_website.id
  rule {
    object_ownership = var.ownership
  }
}

resource "aws_s3_bucket_public_access_block" "static_website" {
  bucket = aws_s3_bucket.static_website.id

  block_public_acls       = var.public_acls
  block_public_policy     = var.block_public
  ignore_public_acls      = var.ignore_public_acls
  restrict_public_buckets = var.restrict_public_buckets
}

resource "aws_s3_bucket_acl" "static_website" {
  depends_on = [
    aws_s3_bucket_ownership_controls.static_website,
    aws_s3_bucket_public_access_block.static_website,
  ]

  bucket = aws_s3_bucket.static_website.id
  acl    = var.acl
}

resource "aws_s3_bucket_policy" "allow_get_access" {
  bucket = aws_s3_bucket.static_website.id
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action   = "s3:GetObject"
        Principal = "*"
        Effect   = "Allow"
        Resource = "${aws_s3_bucket.static_website.arn}/*"
      },
    ]
  })
}