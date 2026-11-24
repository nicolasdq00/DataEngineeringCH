output "s3_bucket" {
  description = "Nombre del Bucket S3 creado"
  value       = aws_s3_bucket.raw_bucket.bucket
}