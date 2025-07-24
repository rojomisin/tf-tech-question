#!/bin/bash

# Bootstrap script to install Google Cloud CLI
set -e

# Database connection variables (passed from Terraform)
DB_HOST="${db_host}"
DB_PORT="${db_port}"
DB_NAME="${db_name}"

echo "Installing Google Cloud CLI..."

# Add the Cloud SDK distribution URI as a package source
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

# Import the Google Cloud public key
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -

# Update and install the Cloud SDK
sudo apt-get update
sudo apt-get install -y google-cloud-cli

# Display database connection information
echo "Database connection information:"
echo "Host: $DB_HOST"
echo "Port: $DB_PORT"
echo "Database: $DB_NAME"

# Initialize gcloud (optional - can be done manually)
echo "Google Cloud CLI installation complete!"
echo "To initialize gcloud, run: gcloud init" 