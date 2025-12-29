export TF_VAR_virginia_cidr="10.10.0.0/16

terraform plan -var ohio_cidr="10.20.0.0/16"

terraform plan --var-file angel.tfvars

explicar precedencia de variables

se suele trabajar con: - terraform.tfvars - terraform.tfjson - _.auto.tfvars - _.auto.tfjson

# Tipos de variables

string
number
bool
list(type)
map(type)
set(type)
object
tupla -> puede contener varios tipos
any (default)

# Output

cuando termina el apply, terraform muestra en pantalla el resultado, ej direcciones ip publica o una instancia ec2,

Ejemplo como usar output:

```
output linix_public_ip {
    value = aws_instance.linux.public_ip
    description = "Muestro la ip publica asignada a la instancia"
}

```
