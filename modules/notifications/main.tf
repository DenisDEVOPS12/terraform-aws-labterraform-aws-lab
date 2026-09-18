# -----------------------------------------------------
# SNS Topic — always created
# -----------------------------------------------------
resource "aws_sns_topic" "this" {
  name = "${var.project_name}-${var.environment}-notifications"
}

# -----------------------------------------------------
# SQS Queue — optional, subscribed to the SNS topic
# -----------------------------------------------------
resource "aws_sqs_queue" "this" {
  count = var.create_queue ? 1 : 0

  name = "${var.project_name}-${var.environment}-queue"
}

resource "aws_sqs_queue_policy" "this" {
  count = var.create_queue ? 1 : 0

  queue_url = aws_sqs_queue.this[0].id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid       = "AllowSNSPublish"
        Effect    = "Allow"
        Principal = { Service = "sns.amazonaws.com" }
        Action    = "sqs:SendMessage"
        Resource  = aws_sqs_queue.this[0].arn
        Condition = {
          ArnEquals = {
            "aws:SourceArn" = aws_sns_topic.this.arn
          }
        }
      }
    ]
  })
}

resource "aws_sns_topic_subscription" "this" {
  count = var.create_queue ? 1 : 0

  topic_arn = aws_sns_topic.this.arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.this[0].arn
}
