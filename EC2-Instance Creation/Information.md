Terraform init:

Used for initalization purpose.
First command to run after making any changes to terraform code.
It downloads providers plugin specified in configuration - tf file.
It created .transform folder (info related to providers this is related to understand internally to terraform) 
It creates - .terraform.lock.hcl to record the provider selections it made above. Include this file in your version control repository so that Terraform can guarantee to make the same selections by default when you run "terraform init" in the future.

Terraform plan - this will show you blue print or let you know how the infra will look or be executed on providers

Terraform validate  - This command will check for you the syntax and if the configuration is correct or not.

Terraform apply - this will execute the terraform code and create infrastructure on the selcted cloud.

Terraform destroy - to destroy the created infrastrcture.(all resources)
Terraform destroy -target="aws_instance.web"
The last option is to remove the resource instance code written terraform will let you know that an instance is to be deleted.