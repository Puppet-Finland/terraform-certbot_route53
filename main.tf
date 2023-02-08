# IAM setup for certbot route53 plugin. Used to get wildcard certificates
resource "aws_iam_user" "certbot" {
  name = "certbot-route53"
}

resource "aws_iam_access_key" "certbot" {
  user = aws_iam_user.certbot.name
}

resource "aws_iam_group" "certbot" {
  name = "certbot-route53"
}

resource "aws_iam_group_policy" "certbot" {
  name   = "certbot-route53"
  group  = aws_iam_group.certbot.id
  policy = templatefile("${path.module}/policies/certbot-policy.json.tftpl", { zones = local.zones })
}

resource "aws_iam_user_group_membership" "certbot" {
  user   = aws_iam_user.certbot.name
  groups = [aws_iam_group.certbot.name]
}
