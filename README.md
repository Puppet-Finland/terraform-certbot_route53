# terraform-certbot_route53

This is a simple module for setting up an IAM user, a policy and an keypair for
certbot-route53. It supports granting certbot-route53 permissions to modify one
or more zones.

# Usage

```
module "certbot_route53" {
  source = "github.com/Puppet-Finland/terraform-certbot_route53?ref=1.0.0"
  zones  = ["AM54JL3BAD39M3821CNAU"]
}
```
