# A-Eye Web Chat Assistant Cloud Infra

本專案提供 [A-Eye Web Chat Assistant](https://github.com/vincentwun/A-Eye-Web-Chat-Assistant) Chrome 擴充套件的公有雲端基礎建設程式碼及部署教學。  
你可用 Google Cloud Platform (GCP)、Microsoft Azure 等主流雲端，快速部署 Serverless 後端、API Gateway 及相關資源。

[Read In English](./README.md)

---

## 功能特色

- **GCP Infrastructure**：API Gateway、Cloud Functions、Vertex AI 整合部署腳本。
- **Azure Infrastructure**：Azure API Management、Azure Functions 與 Azure AI Foundry 部署範例。
- **安全 API Proxy**：安全代理 Chrome 擴充套件與雲端 AI 模型的請求。
- **金鑰管理**：API 金鑰及存取憑證安全管理指引。

---

## 安裝前置需求

請參考官方教學安裝並登入所需 CLI 工具（以取得最新且安全的安裝方式）：

- [Azure CLI](https://learn.microsoft.com/zh-tw/cli/azure/install-azure-cli-linux?view=azure-cli-latest&pivots=apt)
- [Google Cloud CLI (gcloud)](https://cloud.google.com/sdk/docs/install?hl=zh-tw)
- [Terraform](https://developer.hashicorp.com/terraform/install#linux)

---

## GCP

### GCP 架構圖
![GCP Infrastructure](images/gcp_infra.png)

---

### GCP Terraform 部署指南

1. 進入 Terraform 目錄：
    ```bash
    cd gcp/terraform
    chmod +x ./*.sh
    ```

2. 登入 Google Cloud：
    ```bash
    gcloud auth login --update-adc
    ```

3. 設定專案 ID：
    ```bash
    PROJECT_ID=a-eye-infra
    export TF_VAR_project_id=$PROJECT_ID
    ```

4. 設定帳單帳戶：
    ```bash
    gcloud beta billing accounts list
    Billing_Account_ID=<您的帳單帳戶 ID>
    ```

5. 執行 build.sh：
    ```bash
    ./build.sh
    ```

6. 複製 `api_gateway_proxy_endpoint` 和 `api_key_string` 的輸出。

7. 將複製的資訊設定到 Chrome 擴充功能的「設定」>「Cloud AI Settings」>「Vertex AI」>「API Gateway Endpoint」和「GCP API Key」。

    注意：設定可能需要 5 分鐘才能生效。

8. 刪除 GCP 基礎架構：
    ```bash
    terraform destroy -auto-approve
    ```

9. 刪除 GCP 專案:
    ```bash
    gcloud projects delete $PROJECT_ID
    ```

---

## Azure

### Azure 架構圖
![Azure Infrastructure](images/azure_infra.png)

---

<details>
<summary>Azure Terraform 指南</summary>
（逐步補齊）
</details>

---

## 授權

本專案採用 MIT License，詳情請參閱 [LICENSE](./LICENSE)。