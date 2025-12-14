resource "local_file" "productos" {
    count    = 3
    content  = "Lista de productos para el mes proximo"
    # Combinar provider, en este caso random
    # Indice empieza en 0, count.index para usar cada indice 1,2,3...
    filename = "productos-${random_string.sufijo[count.index].id}.txt"
}


## DRY (Dont repeat yoursel)
# resource "local_file" "productos-1" {
#     content  = "Lista de productos para el mes proximo"
#     filename = "productos-${random_string.sufijo.id}.txt"
# }

# resource "local_file" "productos-2" {
#     content  = "Lista de productos para el mes proximo"
#     filename = "productos-${random_string.sufijo-2.id}.txt"
# }

# resource "local_file" "productos-3" {
#     content  = "Lista de productos para el mes proximo"
#     filename = "productos-${random_string.sufijo-3.id}.txt"
# }

# resource "random_string" "sufijo" {
#     length  = 4
#     special = false
#     upper   = false
#     numeric = false
# }