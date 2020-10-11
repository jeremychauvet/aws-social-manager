resource "aws_resourcegroups_group" "test" {
  name = "aws-social-manager-dev"

  resource_query {
    query = <<JSON
{
  "ResourceTypeFilters": [
    "*"
  ],
  "TagFilters": [
    {
      "Key": "App",
      "Values": ["aws-social-manager"]
    },
    {
      "Key": "Env",
      "Values": ["dev"]
    },
  ]
}
JSON
  }

  tags = var.tags
}
