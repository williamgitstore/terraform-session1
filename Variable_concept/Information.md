You can pass input value through variables for your resources.

Example - the security group which you are creating requires cidr block and the cidr block value has been passed through varaible file - variable.tf. The variables.tf file will have declaration and default value specification.

You can pass value directly through command line as well terraform pla -var="cidr=33.44.55.66/32"

you can also assign values using environment variables - export TF_VAR_cidr= " "

In real world we assign the variable values in terraform.tfvars - the file name should be exact same as mentioned as terraform uses it internally to map with variable.tf file.

