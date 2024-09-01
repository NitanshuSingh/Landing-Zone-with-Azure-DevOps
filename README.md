# Introduction 
This Projects gives you a basic understanding of creating landing zone by writing CI/CD pipeline to ensure end-to-end automation. 

# Getting Started
Here, we can get familiar with writing terraform configuration files in HCL and deploying it throgh Azure DevOps CI/CD pipeline. In this section we have created below resources:

1.	Resource Group - 1
2.	Virtual Network - to secure our resources in cloud
3.	3 Subnets - each subnet for vm and bastion
4.	Storage Account + Container - for storing tfstate file
5.  Virtual Machines - 2
6.  Azure Bastion - To access VMs in Vnet
7.  Key Vault - to store secret data

# Tools Used
VS code
Terraform
git
Azure DevOps
Azure Portal

# Pre-requisites
Configure self hosted agent or you should have Azure hosted agent
Create Service Principal from Azure Portal
 - Create secret and certificate
 - And add contributor role to it.
Create Service Connection from Azure DevOps

# Build and Test
We have written CI/CD pipeline to deploy the resources and can be tested by accessing VMs through Bastion. 

# Contribute
You are always welcome to contribute to this project by adding other security services azure gateway, firewall, etc.


