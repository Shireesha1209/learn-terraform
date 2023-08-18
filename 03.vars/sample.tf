# plain variables
variable "fruit_name" {
  default = "apple"
}

output "fruit_name" {
  value = var.fruit_name
}

# List variables
variable "fruits" {
  default = [
    "apple",
    "banana"
  ]
 // default = [ "apple","banana" ] // Single line syntax
}

#Map variable, plain
variable "fruit_stock" {
  default = {
    apple = 100
    banana = 200
  }
}

#Map variable, Map of maps
variable "fruits_stock_with_price" {
  default = {
    apple = {
      stock = 100
      price = 3
  }
    banana = {
      stock = 400
      price = 1
    }
  }
}

## Access a list variable, List index starts from zero
output "fruits_first" {
  value = var.fruits[0]
}

output "fruits_second" {
  value = var.fruits[1]
}

## Access a Map variable
output "fruit_stock_apple" {
  value = var.fruit_stock["apple"]
}

output "fruits_stock_with_price_of_apple" {
  value = var.fruits_stock_with_price["apple"].stock
}

# variable data types
variable "fruit_details" {
  default = {
    apple = {
      stock = 100 # number
      type = "washington" #string
      for_sale = true #boolean
    }
  }
}

# variable in a combination of any other string then it need to be with in ${}
output "fruit_name_1" {
  value = "Fruit Name = ${var.fruit_name}"
}
output "fruit_details_apple" {
  value = "Apple Stock = ${var.fruit_details["apple"].stock} ,Apple Type = ${var.fruit_details["apple"].type},Apple Sale status = ${var.fruit_details["apple"].for_sale}"
}





