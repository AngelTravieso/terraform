export TF_VAR_virginia_cidr="10.10.0.0/16

terraform plan -var ohio_cidr="10.20.0.0/16"

terraform plan --var-file angel.tfvars

explicar precedencia de variables

se suele trabajar con: - terraform.tfvars - terraform.tfjson - _.auto.tfvars - _.auto.tfjson
