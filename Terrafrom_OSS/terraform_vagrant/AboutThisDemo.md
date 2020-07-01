# About this Demo
This demo is to present Terraform OSS use case. 

## Vagrantfile 
The Vagrantfile is used to set up the demo enviroment: 
* set up a Virtual Machine with Virtual box (Ubantu) 
* download terraform oss and install(unzip) - using the bash file from the 'scripts' folder. 

## TFE_Provider_Demo
This will demonstrate how to use 'Terraform Enterprise Provider' https://www.terraform.io/docs/providers/tfe/index.html.
To use the demo, please:
* Clone this folder to your Terraform enviroment. 
* Update the 'Your Host Name' in the 'variable.tf' file with your TFE hostname
* Update the .terraformrc file "Your Team API Token" with your Team API Token.
* Run 'terraform init'  to download the plugin


