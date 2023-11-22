resource "aws_route53_record" "vuln-report-nonprod-delegated-zone" {
  zone_id         = aws_route53_zone.sec-gov-uk.zone_id
  allow_overwrite = true
  name            = "vulnerability-reporting.nonprod-service"
  ttl             = local.standard_ttl
  type            = "NS"

  records = [
    "ns-1202.awsdns-22.org.",
    "ns-527.awsdns-01.net.",
    "ns-243.awsdns-30.com.",
    "ns-1927.awsdns-48.co.uk.",
  ]
}

resource "aws_route53_record" "vrs-np-ds" {
  zone_id         = aws_route53_zone.sec-gov-uk.zone_id
  allow_overwrite = true
  name            = "vulnerability-reporting.nonprod-service"
  ttl             = local.standard_ttl
  type            = "DS"

  records = [
    "37860 13 2 069F6F1739BDAE469A33EEEFCCDCAE32410D594FD67F17534F111E37F941585D"
  ]
}

resource "aws_route53_record" "sso-nonprod-delegated-zone" {
  zone_id         = aws_route53_zone.sec-gov-uk.zone_id
  allow_overwrite = true
  name            = "sso.nonprod-service"
  ttl             = local.standard_ttl
  type            = "NS"

  records = [
    "ns-897.awsdns-48.net.",
    "ns-1098.awsdns-09.org.",
    "ns-363.awsdns-45.com.",
    "ns-1805.awsdns-33.co.uk.",
  ]
}

resource "aws_route53_record" "webcaf-nonprod-delegated-zone" {
  zone_id         = aws_route53_zone.sec-gov-uk.zone_id
  allow_overwrite = true
  name            = "webcaf.nonprod-service"
  ttl             = local.standard_ttl
  type            = "NS"

  records = [
    "ns-1273.awsdns-31.org.",
    "ns-825.awsdns-39.net.",
    "ns-1763.awsdns-28.co.uk.",
    "ns-220.awsdns-27.com."
  ]
}

resource "aws_route53_record" "gccc-cname-nonprod" {
  zone_id = aws_route53_zone.sec-gov-uk.zone_id
  name    = "gccc.nonprod-service"
  type    = "CNAME"
  ttl     = local.extra_low_ttl

  records = [
    "gccc.zendesk.com"
  ]
}
