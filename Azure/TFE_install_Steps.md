# How to install TFE on Azure: Step by Step

## About Terraform Enterprise
Terraform Enterprise is our self-hosted distribution of Terraform Cloud. It offers enterprises a private instance of the Terraform Cloud application, with no resource limits and with additional enterprise-grade architectural features like audit logging and SAML single sign-on.

## Prerequirement
* HashiCorp License for TFE: You need to have the .rli license file handy. (as we are using the Enterprise version, you should be able to get the license file from HashiCorp)
* Azure account: You need to have an account with Azure to be able to setup VM. 

## Precheck
* Read through https://www.terraform.io/docs/enterprise/private/azure-setup-guide.html to make sure the hardware requirements are all met.
* (optional) You can read https://www.terraform.io/docs/cloud/guides/recommended-practices/index.html - Terraform Recommended Practices to learn some best practices before setting up the TFE instance. 

## Step1: Create Virtual Machine from Azure
