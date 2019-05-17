WORDPRESS

Ansible part

Ansible file : playbook.yml

Use the command : ansible-playbook playbook.yml -i hosts

Terraform part


Terraform file : maint.tf variables.tf


Put your token and organization in a file variables.tfvars*


Then use the commands 

-	terraform init

-	terraform plan -var-file=”variables.tfvars »

-	terraform apply -var-file= “variables.tfvars”

Packer part

Packer file: build.json

Export token and organization in .bashrc

-	export SCW_TOKEN=””

-	export SCW_ORGANIZATION=””

then use command packer build build.json
