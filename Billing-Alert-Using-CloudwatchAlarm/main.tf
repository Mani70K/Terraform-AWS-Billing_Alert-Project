resource "aws_sns_topic" "my-aws-sns-topic" {
  name = var.sns_topic_name
}


resource "aws_sns_topic_subscription" "sns-subscription" {
  topic_arn = aws_sns_topic.my-aws-sns-topic.arn
  protocol = var.sns_topic_subscription_protocol
  endpoint = var.sns_topic_subscription_endpoint
}


resource "aws_cloudwatch_metric_alarm" "environment_billing_alarm" {
  alarm_name = var.cloudwatch_alarm_name
  comparison_operator = var.cloudwatch_comparision_value
  evaluation_periods = var.cloudwatch_evaluation_period_value
  metric_name = var.cloudwatch_metric_name
  statistic = var.cloudwatch_statistic_value
  threshold = var.cloudwatch_threshold_value
  period = var.cloudwatch_period_duration  # In Seconds
  namespace = var.cloudwatch_namespace
  alarm_description = var.cloudwatch_alarm_description
  alarm_actions = [aws_sns_topic.my-aws-sns-topic.arn]
  dimensions = {
    Currency=var.cloudwatch_currency_dimension
  }
}
