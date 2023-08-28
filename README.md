<!-- BEGIN_TF_DOCS -->

## Resources

| Name                                                                                                                           | Type        |
| ------------------------------------------------------------------------------------------------------------------------------ | ----------- |
| [aws_route53_record.caldav](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record)        | resource    |
| [aws_route53_record.caldavs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record)       | resource    |
| [aws_route53_record.carddav](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record)       | resource    |
| [aws_route53_record.carddavs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record)      | resource    |
| [aws_route53_record.fm1_domainkey](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource    |
| [aws_route53_record.fm2_domainkey](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource    |
| [aws_route53_record.fm3_domainkey](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource    |
| [aws_route53_record.imap](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record)          | resource    |
| [aws_route53_record.imaps](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record)         | resource    |
| [aws_route53_record.jmap](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record)          | resource    |
| [aws_route53_record.mx_records](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record)    | resource    |
| [aws_route53_record.pop3](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record)          | resource    |
| [aws_route53_record.pop3s](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record)         | resource    |
| [aws_route53_record.spf](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record)           | resource    |
| [aws_route53_record.submission](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record)    | resource    |
| [aws_route53_zone.zone](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route53_zone)           | data source |

## Inputs

| Name        | Description                                | Type           | Default                                 | Required |
| ----------- | ------------------------------------------ | -------------- | --------------------------------------- | :------: |
| spf_include | SPF record list                            | `list(string)` | `[ "include:spf.messagingengine.com" ]` |    no    |
| zone_id     | Hosted Zone id of the desired Hosted Zone. | `string`       | n/a                                     |   yes    |

<!-- END_TF_DOCS -->
