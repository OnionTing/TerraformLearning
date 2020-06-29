# How to install TFE on Azure: Step by Step
Please note, this is for demo/testing only, if you want to set up production enviroment, please modify accordingly.

## About Terraform Enterprise
Terraform Enterprise is our self-hosted distribution of Terraform Cloud. It offers enterprises a private instance of the Terraform Cloud application, with no resource limits and with additional enterprise-grade architectural features like audit logging and SAML single sign-on.

## Prerequirement
* HashiCorp License for TFE: You need to have the .rli license file handy. (as we are using the Enterprise version, you should be able to get the license file from HashiCorp)
* Azure account: You need to have an account with Azure to be able to setup VM. 

## Precheck
* Read through https://www.terraform.io/docs/enterprise/private/azure-setup-guide.html to make sure the hardware requirements are all met.
* (optional) You can read https://www.terraform.io/docs/cloud/guides/recommended-practices/index.html - Terraform Recommended Practices to learn some best practices before setting up the TFE instance. 

## Step1: Create Virtual Machine from Azure
* Log in to Azure portal: https://portal.azure.com 
* Click "Virtual machines" on the left side to open the "Virtual Machines" page, then click "Add" to create a new Virtual Machine. 
* You need to fill in below information for your new Virtual Machine:
1. Subscription: choose the right subscription from the drop-downl-llist. 
2. Resource group: you can use any existing resource group or just create a new one, e.g. "Ting-TFE-Demo-RG". (A resource group is a collection of resources that share the same lifecycle, permissions, and policies.)
3. Virtual machine name: give a name to your virtual machine, e.g. "Ting-TFE-Demo"
4. Region: pick the region. 
5. Image: choose which image you want to install on your VM. you can just use the default "Ubuntu Server 18.04 LTS". 
6. size: choose the size of the vm, based on your usage. 
7. Authentication type: you can choose the "SSH public key" or "Password" to authenticate the admin to login. In this demo, we will use the "SSH public key". 
8. Username: it is the admin name of the VM. You can use the default name or change it to "Ting-TFE-Demo-admin"
9. SSH public key source: we choose "SSH public key" in the "Authentication type" section, so you can choose an existing one or create a new key pair. 
10. Go to "Next:Disks" and click "Create and attach a new disk". In the Source type, choose "None(empty disk)", keep the rest as default.
11. Go to the "Networking" tab. You can use the existing Virtual Network, or create one. In the "Select inbound ports", add "HTTP(80),HTTP(443),SSH(22)".
12. Keep the rest as default. Click "Review + create". Save the SSH " xxxx.pem" locally, you will need it to connect to VM.

## Step2: Config the VM - Config the Networking
1. Click on the VM that we just created. e.g. "Ting-TFE-Demo". Then click the "Netwworking" under the "Settings" section. 
2. Click "Add inbound security rule", change the "Destination port ranges" from '8080' to '8800'; change the "Name" from 'Port_8080' to 'Port_8800'. Then click "Add".

## Step3: Config the VM - Config the DNS name
1. Click on "Properities" under the "Settings" section.
2. Check the "Public IP address/DNS name label", if the DNS is <none>, click on the link to define a DNS name label. e.g. 'ting-tfe-demo-dns'. Then click "save".
3. Click "Properties", you will see the DNS Name has been changed. e.g. 'DNS name
ting-tfe-demo-dns.westus2.cloudapp.azure.com'

## Step4: Connect to the VM
1. Click on the VM that we just created. e.g. "Ting-TFE-Demo". Then click the "Connect" icon.
2. Choose "SSH". 
3. Follow the instruction to connect. If you use iTerm, open the Terminal and input the following CLI 'ssh -i <private key path> Ting-TFE-Demo-admin@ting-tfe-demo-dns.westus2.cloudapp.azure.com' the <private key path> is where you save the xxx.pem file. You can read https://docs.microsoft.com/en-us/azure/virtual-machines/linux/quick-create-portal?toc=/azure/virtual-machines/linux/toc.json for more info. 

## Step5: Install TFE (Terraform Enterprise) to the VM
1. In the terminal which you SSH to the Azure VM, run the following command 

' curl https://install.terraform.io/ptfe/stable | sudo bash'

2. Use the default public IP, by entering '0' in the 'Enter desired number (0-1):'




