# 🌐 Terraform AKS Cluster Deployment

This repository contains Terraform code to deploy a complete **Azure AKS (Azure Kubernetes Service)** environment in Azure, using **modular architecture** with:

- ✅ Azure Virtual Network (VNet) configuration with private, public, and internal subnets.
- ✅ Azure Kubernetes Service (AKS) Node Pool with a spot VM + on-demand VM strategy.
- ✅ Azure Role-Based Access Control (RBAC) with Azure Active Directory (AAD) integration for access management.
- ✅ Azure Monitor with Log Analytics workspaces and daily quotas for cluster monitoring.
- ✅ Custom Azure Network Security Group (NSG) for fine-grained access control.



## 📁 Folder Structure
```
.
├── main.tf      # Main Terraform configuration
├── vnet.tf      # Azure Virtual Network (VNet) configuration
├── aks.tf       # Azure Kubernetes Service (AKS) cluster setup
├── variables.tf # Variables for Terraform modules
├── aad.tf       # AAD roles and policies for AKS node pools
├── outputs.tf   # Outputs for Terraform modules
├── network_sec_gp.tf # Custom Azure Network Security Group (NSG) config
└── README.md     # Project Documentation
```



## ⚙️ Requirements

- Terraform ≥ 1.3.0
- Azure CLI configured with appropriate permissions for creating Virtual Networks, AKS Clusters, and Role Assignments in Azure Active Directory (AAD).
- kubectl (for cluster access)

## 🔧 Configuration

###  `network_sec_group.tf`

This file defines a custom **Network Security Group** attached to the AKS worker nodes. It:

- Allows **SSH (port 22)** from your IP address (adjustable)
- Enables all **outbound traffic** via egress rule


## 🚀 How to Deploy

```bash
# 1. Initialize Terraform
terraform init

# 2. Preview changes
terraform plan

# 3. Apply changes to deploy infrastructure
terraform apply -auto-approve

# 4. (Optional) Destroy everything
terraform destroy -auto-approve
```

## ✍️ Author

Created by Omar Frikha

Feel free to contribute or open issues for improvement.