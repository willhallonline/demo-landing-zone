module "security_hub" {
  source  = "terraform-aws-modules/security-hub/aws"
  version = "~> 2.0"

  enable_security_hub = true

  enable_default_standards = true
  control_finding_generator = "SECURITY_CONTROL"
  
  security_hub_standards = {
    aws_foundational = true
    cis_1_2         = true
    pci_dss         = true
  }
}

module "guardduty" {
  source  = "terraform-aws-modules/guardduty/aws"
  version = "~> 3.0"

  enable_guardduty = true
  findings_notification_frequency = "ONE_HOUR"
}