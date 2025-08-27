#!/bin/bash

# Login to Google Cloud
gcloud auth login
gcloud auth application-default login

# Set up Project ID
PROJECT_ID=a-eye-infra-20250827
export TF_VAR_project_id=$PROJECT_ID

# Set up billing account
gcloud beta billing accounts list
Billing_Account_ID=<Your Billing Account ID>

# Create, link, config and enable services for the project
gcloud projects create $PROJECT_ID --name=$PROJECT_ID --set-as-default
gcloud beta billing projects link $PROJECT_ID --billing-account=$Billing_Account_ID
gcloud config set project $PROJECT_ID
gcloud auth application-default set-quota-project $PROJECT_ID
gcloud services enable cloudresourcemanager.googleapis.com --project=$PROJECT_ID

# Terraform build infra
terraform init
terraform plan -var="project_id=${PROJECT_ID}"
terraform apply -auto-approve -var="project_id=${PROJECT_ID}"

# Get the API key
terraform output api_key_string

gcloud services enable gemini-api-id-1diqs680eq9np.apigateway.tf-20250504b.cloud.goog --project=$PROJECT_ID