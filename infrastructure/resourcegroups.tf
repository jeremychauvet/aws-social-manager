resource "aws_resourcegroups_group" "social-manager" {
  name = "social-manager"

  resource_query {
    query = <<JSON
{
  "ResourceTypeFilters": [
    "AWS::AllSupported"
  ],
  "TagFilters": [
    {
      "Key": "App",
      "Values": ["aws-social-manager"]
    }
  ]
}
JSON
  }

  tags = var.tags
}
