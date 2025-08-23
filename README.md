# A-Eye Cloud Infra

This repository contains the public cloud infrastructure code and deployment guides for the [A-Eye Web Chat Assistant](https://github.com/vincentwun/A-Eye-Web-Chat-Assistant) Chrome extension.  
It provides scripts, configuration files, and documentation for deploying serverless backends, API gateways, and related resources on Google Cloud Platform (GCP) and Microsoft Azure.

## Features

- **GCP Infrastructure**: Scripts and guides for deploying API Gateway, Cloud Functions, and Vertex AI integration.
- **Azure Infrastructure**: Templates and instructions for deploying Azure Functions, API Management, and AI services.
- **Secure API Proxy**: Backend services to securely proxy requests from the extension to cloud AI models.
- **Key Management**: Guidance for securely managing API keys and access credentials.

## Structure

```
gcp/
  gcloud/
    1_setup_env.sh
    2_deploy_infra.sh
    3_create_gateway_and_key.sh
    api-config.yaml
    README.md
azure/
  ... (coming soon)
```

## Getting Started

### Google Cloud Platform

1. Follow the instructions in `gcp/gcloud/README.md` to set up your GCP environment and deploy the backend.
2. Configure your API keys and endpoints as described.

### Microsoft Azure

1. (Coming soon)

## License

This project is licensed under the MIT License. See [LICENSE](./LICENSE) for details.