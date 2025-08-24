# A-Eye Cloud Infra

This project provides infrastructure code and deployment guides for the [A-Eye Web Chat Assistant](https://github.com/vincentwun/A-Eye-Web-Chat-Assistant) Chrome extension on public cloud platforms.  
You can quickly deploy serverless backends, API Gateways, and related resources using mainstream clouds such as Google Cloud Platform (GCP) and Microsoft Azure.

---

## Features

- **GCP Infrastructure**: Deployment scripts for API Gateway, Cloud Functions, and Vertex AI integration.
- **Azure Infrastructure**: Coming soon.
- **Secure API Proxy**: Securely proxies requests between the Chrome extension and cloud AI models.
- **Key Management**: Guidance for secure management of API keys and access credentials.

---

## Architecture Diagrams

### GCP Architecture
![GCP Infrastructure](images/gcp_infra.png)

---

## Quick Start

### GCP CLI Deployment Guide

1. Enter the GCP CLI directory:
    ```bash
    cd gcp/gcp-cli
    chmod +x ./*.sh
    ```

2. Edit and load environment variables:
    - Modify `1_setup_env.sh` and fill in your `BILLING_ACCOUNT_ID`.
    - Load environment variables:
      ```bash
      source ./1_setup_env.sh
      ```

3. Deploy infrastructure and get the Function URL:
    ```bash
    ./2_deploy_infra.sh
    ```
    - Copy the output Function Invoke URL and fill it in the `address:` field of `api-config.yaml`.

4. Create API Gateway and API Key:
    ```bash
    ./3_create_gateway_and_key.sh
    ```
    - Obtain the API Gateway Endpoint and API Key, and fill them in the Chrome extension settings.

---

### Terraform Deployment Guide

1. Enter the Terraform directory:
    ```bash
    cd gcp/terraform
    chmod +x ./*.sh
    ```

2. Edit `variables.tf` and `api-config.yaml.tftpl` to set your GCP information.

3. Create resources:
    ```bash
    ./1_build.sh
    ```

4. To remove resources:
    ```bash
    ./2_destroy.sh
    ```

---

### Azure Deployment Guide

(Coming soon)

---

## Prerequisites

For the safest and latest installation, please refer to the official guides for CLI tools:

- [Azure CLI Official Installation Guide](https://learn.microsoft.com/zh-tw/cli/azure/install-azure-cli-linux?view=azure-cli-latest&pivots=apt)
- [gcloud CLI Official Installation Guide](https://cloud.google.com/sdk/docs/install?hl=zh-tw)
- [Terraform Official Installation Guide](https://developer.hashicorp.com/terraform/install#linux)

---

## License

This project is licensed under the MIT License. See [LICENSE](./LICENSE) for details.