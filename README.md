# A-Eye Web Chat Assistant Cloud Infra

This project provides infrastructure code and deployment guides for the [A-Eye Web Chat Assistant](https://github.com/vincentwun/A-Eye-Web-Chat-Assistant) Chrome extension on public cloud platforms.  
You can quickly deploy serverless backends, API Gateways, and related resources using mainstream clouds such as Google Cloud Platform (GCP) and Microsoft Azure.

[Read In Chinese](./README.zh.md)

---

## Features

- **GCP Infrastructure**: Deployment scripts for API Gateway, Cloud Functions, and Vertex AI integration.
- **Azure Infrastructure**: Deployment scripts for Azure API Management, Azure Functions, and Azure AI Foundry.
- **Secure API Proxy**: Securely proxies requests between the Chrome extension and cloud AI models.
- **Key Management**: Guidance for secure management of API keys and access credentials.

---

## Prerequisites

For the safest and latest installation, please refer to the official guides for CLI tools:

- [Azure CLI](https://learn.microsoft.com/zh-tw/cli/azure/install-azure-cli-linux?view=azure-cli-latest&pivots=apt)
- [Google Cloud CLI (gcloud)](https://cloud.google.com/sdk/docs/install?hl=zh-tw)
- [Terraform](https://developer.hashicorp.com/terraform/install#linux)

---

## GCP

### GCP Architecture
![GCP Infrastructure](images/gcp_infra.png)

---

<details>
<summary>GCP CLI Deployment Guide</summary>

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

</details>

---

<details>
<summary>GCP Terraform Deployment Guide</summary>

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

</details>

---

## Azure

### Azure Architecture
![Azure Infrastructure](images/azure_infra.png)

---

<details>
<summary>Azure CLI Deployment Guide</summary>

(Coming soon)

</details>

---

<details>
<summary>Azure Terraform Deployment Guide</summary>

(Coming soon)

</details>

---

## License

This project is licensed under the MIT License. See [LICENSE](./LICENSE) for details.