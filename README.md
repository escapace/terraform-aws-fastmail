## Requirements

| Name | Version |
|------|---------|
| terraform | ~> 0.12.0 |
| aws | ~> 2.65.0 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.65.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| spf\_include | SPF record list | `list(string)` | <pre>[<br>  "include:spf.messagingengine.com"<br>]</pre> | no |
| zone\_id | n/a | `any` | n/a | yes |

## Outputs

No output.

