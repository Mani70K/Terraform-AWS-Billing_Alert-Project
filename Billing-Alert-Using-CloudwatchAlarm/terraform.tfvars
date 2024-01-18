aws_access_key = ""              # AWS Access Key
aws_secret_key = ""              # AWS Secret Key
aws_region = "us-east-1"         # Default Region For AWS Billing

sns_topic_name = "Estimated-Cost-Topic"
sns_topic_subscription_protocol = "email"
sns_topic_subscription_endpoint = ""        # Put Email Address Here

cloudwatch_alarm_name = "Environment-Billing-Alarm"
cloudwatch_comparision_value = "GreaterOrEqualToThanThreshold"
cloudwatch_evaluation_period_value =  1  # Data points
cloudwatch_metric_name = "EstimatedCharges"
cloudwatch_statistic_value = "Maximum"
cloudwatch_threshold_value = 920     # Threshold Value
cloudwatch_period_duration = 21600   # 6 hours
cloudwatch_namespace = "AWS/Billing"
cloudwatch_alarm_description = "Alarm when estimested charges exceed $920"
cloudwatch_currency_dimension = "USD"
