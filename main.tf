data "aws_route53_zone" "zone" {
  zone_id = var.zone_id
}

resource "aws_route53_record" "mx_records" {
  zone_id = data.aws_route53_zone.zone.zone_id
  name    = data.aws_route53_zone.zone.name
  type    = "MX"
  ttl     = "300"

  records = [
    "10 in1-smtp.messagingengine.com.",
    "20 in2-smtp.messagingengine.com.",
  ]

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_route53_record" "spf" {
  zone_id = data.aws_route53_zone.zone.zone_id
  name    = data.aws_route53_zone.zone.name
  type    = "TXT"
  ttl     = "300"

  records = [
    "v=spf1 ${join(" ", var.spf_include)} ?all",
  ]

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_route53_record" "fm1_domainkey" {
  zone_id = data.aws_route53_zone.zone.zone_id
  name    = "fm1._domainkey"
  type    = "CNAME"
  ttl     = "300"

  records = [
    "fm1.${data.aws_route53_zone.zone.name}dkim.fmhosted.com.",
  ]

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_route53_record" "fm2_domainkey" {
  zone_id = data.aws_route53_zone.zone.zone_id
  name    = "fm2._domainkey"
  type    = "CNAME"
  ttl     = "300"

  records = [
    "fm2.${data.aws_route53_zone.zone.name}dkim.fmhosted.com.",
  ]

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_route53_record" "fm3_domainkey" {
  zone_id = data.aws_route53_zone.zone.zone_id
  name    = "fm3._domainkey"
  type    = "CNAME"
  ttl     = "300"

  records = [
    "fm3.${data.aws_route53_zone.zone.name}dkim.fmhosted.com.",
  ]

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_route53_record" "caldav" {
  zone_id = data.aws_route53_zone.zone.zone_id
  name    = "_caldav._tcp"
  type    = "SRV"
  ttl     = "300"

  records = [
    "0 0 0 .",
  ]

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_route53_record" "caldavs" {
  zone_id = data.aws_route53_zone.zone.zone_id
  name    = "_caldavs._tcp"
  type    = "SRV"
  ttl     = "300"

  records = [
    "0 1 443 caldav.fastmail.com.",
  ]

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_route53_record" "pop3" {
  zone_id = data.aws_route53_zone.zone.zone_id
  name    = "_pop3._tcp"
  type    = "SRV"
  ttl     = "300"

  records = [
    "0 0 0 .",
  ]

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_route53_record" "pop3s" {
  zone_id = data.aws_route53_zone.zone.zone_id
  name    = "_pop3s._tcp"
  type    = "SRV"
  ttl     = "300"

  records = [
    "10 1 995 pop.fastmail.com.",
  ]

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_route53_record" "carddav" {
  zone_id = data.aws_route53_zone.zone.zone_id
  name    = "_carddav._tcp"
  type    = "SRV"
  ttl     = "300"

  records = [
    "0 0 0 .",
  ]

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_route53_record" "carddavs" {
  zone_id = data.aws_route53_zone.zone.zone_id
  name    = "_carddavs._tcp"
  type    = "SRV"
  ttl     = "300"

  records = [
    "0 1 443 carddav.fastmail.com.",
  ]

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_route53_record" "imap" {
  zone_id = data.aws_route53_zone.zone.zone_id
  name    = "_imap._tcp"
  type    = "SRV"
  ttl     = "300"

  records = [
    "0 0 0 .",
  ]

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_route53_record" "imaps" {
  zone_id = data.aws_route53_zone.zone.zone_id
  name    = "_imaps._tcp"
  type    = "SRV"
  ttl     = "300"

  records = [
    "0 1 993 imap.fastmail.com.",
  ]

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_route53_record" "jmap" {
  zone_id = data.aws_route53_zone.zone.zone_id
  name    = "_jmap._tcp"
  type    = "SRV"
  ttl     = "300"

  records = [
    "0 1 443 jmap.fastmail.com.",
  ]

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_route53_record" "submission" {
  zone_id = data.aws_route53_zone.zone.zone_id
  name    = "_submission._tcp"
  type    = "SRV"
  ttl     = "300"

  records = [
    "0 1 587 smtp.fastmail.com.",
  ]

  lifecycle {
    create_before_destroy = true
  }
}

