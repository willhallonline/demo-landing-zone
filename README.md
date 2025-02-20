# demo-landing-zone

![Terraform CI/CD](https://github.com/<your-username>/demo-landing-zone/actions/workflows/terraform.yml/badge.svg)

This project sets up a landing zone for an AWS organization using Terraform. It includes configurations for both development and production environments, as well as reusable modules for managing AWS accounts, organizations, and networking.

## Project Structure

- **environments/**: Contains environment-specific configurations.
  - **dev/**: Development environment configurations.
  - **prod/**: Production environment configurations.
  
- **modules/**: Contains reusable Terraform modules.
  - **organization/**: Module for managing AWS Organizations.
  - **accounts/**: Module for managing AWS accounts.
  - **network/**: Module for managing networking resources.

## Getting Started

1. Clone the repository.
2. Navigate to the desired environment directory (e.g., `environments/dev`).
3. Initialize Terraform: `terraform init`.
4. Plan the deployment: `terraform plan`.
5. Apply the configuration: `terraform apply`.

## Requirements

- Terraform 1.x
- AWS account with necessary permissions

## License

This project is licensed under the MIT License.