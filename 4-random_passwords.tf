resource "random_password" "password1" {
  length           = 16
  special          = false
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "random_password" "password2" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "random_password" "password3" {
  length           = 16
  special          = true
  override_special = "!@#$"
}

resource "random_integer" "priority" {
  min = 1000
  max = 5000
}


