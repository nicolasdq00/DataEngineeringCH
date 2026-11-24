
resource "aws_s3_bucket" "raw_bucket" {
    bucket = "${var.project_name}-${var.environment}-raw"
}
