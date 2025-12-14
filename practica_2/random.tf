resource "random_string" "sufijo" {
    count   = 3 # Indicar a terraform que cree 3 recursos del mismo
    length  = 4
    special = false
    upper   = false
    numeric = false
}

