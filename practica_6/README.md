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
