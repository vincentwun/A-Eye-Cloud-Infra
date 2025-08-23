# A-Eye 雲端架構（繁體中文）

本儲存庫專門存放 [A-Eye Web Chat Assistant](https://github.com/vincentwun/A-Eye-Web-Chat-Assistant) Chrome 擴充功能的公有雲架構程式與部署文件。  
內容包含 Google Cloud Platform（GCP）與 Microsoft Azure 的 serverless 後端、API gateway 及相關資源的腳本與設定。

## 特色

- **GCP 架構**：提供 API Gateway、Cloud Functions、Vertex AI 整合的部署腳本與說明。
- **Azure 架構**：提供 Azure Functions、API 管理、AI 服務的範本與教學（陸續補充）。
- **安全 API Proxy**：後端服務安全代理 extension 到雲端 AI 模型的請求。
- **金鑰管理**：安全管理 API 金鑰與存取憑證的指引。

## 結構說明

```
gcp/
  gcloud/
    1_setup_env.sh
    2_deploy_infra.sh
    3_create_gateway_and_key.sh
    api-config.yaml
    README.md
azure/
  ...（即將推出）
```

## 快速開始

### Google Cloud Platform

1. 依照 `gcp/gcloud/README.md` 的步驟設定 GCP 環境並部署後端服務。
2. 依說明設定 API 金鑰與端點。

### Microsoft Azure

1. （即將推出）

## 授權

本專案採用 MIT License 授權，詳見 [LICENSE](./LICENSE)。