#!/bin/bash

# Replace <Your Project ID> with your actual GCP project ID
PROJECT_ID=<Your Project ID>

export TF_VAR_project_id=$PROJECT_ID

# Terraform build infra
terraform init
terraform plan -var="project_id=${PROJECT_ID}"
terraform apply -auto-approve -var="project_id=${PROJECT_ID}"

# Get the API key
terraform output api_key_string