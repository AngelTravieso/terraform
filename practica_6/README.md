Diferencia subnet publica y privada

- terraform output
- terraform output <name>

Esto aplica el codigo sin pedir confirmacion, se desaconseja, vale tanto para el apply como para el destroy
terraform apply --auto-approve=true

# Target Resource

Solo cambia un recurso en especifico en el apply, no se usa mucho, solo en ocasiones donde necesito solucionar algo rápido y otros recursos no están listos para el deploy
terraform apply --target <resource>

```
terraform apply --target aws_subnet.public_subnet
```

# Data

No hace deploy infraestructura, solamente lee recursos que ya existen para luego usarlo en nuestro código

# Terraform State (tfstate) y Backup (tfstate.backup)

Nuestros archivos .tf son los archivos HCP con la configuración de nuestra infraestructura, lo que queremos, los archvos tfstate es el estado real y actual de la infraestructura, cada vez que hacemos un plan o apply hace una comparación contra el tfstate, si hay diferencia muestra las mismas para aplicar los cambios, el tfstate debe estar alojado en un lugar centralizado (en una empresa) nunca se sube a un repositorio por cuestiones de seguridad, ya que contiene información sensible, debe ser tratado con cuidado

El archivo tfstate.backup se llena solo cuando borramos la infraestructura (terraform destroy)
less terraform.tfstate.backup
