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

<details>
<summary>GCP CLI 部署教學</summary>

1. 進入 GCP CLI 目錄並授權腳本：
    ```bash
    cd gcp/gcp-cli
    chmod +x ./*.sh
    ```

2. 編輯並載入環境變數：
    - 修改 `1_setup_env.sh`，填入你的 `BILLING_ACCOUNT_ID` 等必要參數。
    - 載入環境變數：
      ```bash
      source ./1_setup_env.sh
      ```

3. 部署基礎建設並取得 Cloud Function URL：
    ```bash
    ./2_deploy_infra.sh
    ```
    - 複製輸出的 Function Invoke URL，填入 `api-config.yaml` 的 `address:` 欄位。

4. 建立 API Gateway 及 API Key：
    ```bash
    ./3_create_gateway_and_key.sh
    ```
    - 取得 API Gateway Endpoint 與 API Key，填入 Chrome 擴充套件的設定。

</details>

---

<details>
<summary>GCP Terraform 部署教學</summary>

1. 進入 Terraform 目錄：
    ```bash
    cd gcp/terraform
    chmod +x ./*.sh
    ```

2. 編輯 `variables.tf` 及 `api-config.yaml.tftpl`，設定你的 GCP 專案、區域與金鑰等資訊。

3. 初始化並建立資源：
    ```bash
    ./1_build.sh
    ```

4. 移除資源：
    ```bash
    ./2_destroy.sh
    ```

建議：在 CI/CD 中使用 Terraform state lock、遠端 state（如 GCS）並將敏感參數放入 Secret Manager 或 CI 變數。
</details>

---

## Azure

### Azure 架構圖
![Azure Infrastructure](images/azure_infra.png)

---

<details>
<summary>Azure CLI 指南</summary>
（逐步補齊）
</details>

---

<details>
<summary>Azure Terraform 指南</summary>
（逐步補齊）
</details>

---

## 授權

本專案採用 MIT License，詳情請參閱 [LICENSE](./LICENSE)。