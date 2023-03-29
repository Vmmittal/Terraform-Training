resource "local_file" "file_block" {
  content  = local.secondcon
  filename = "p1.html"
}

resource "local_file" "file_block2" {
  content  = local.con
  filename = "p1.py"
}

resource "local_file" "file_block3" {
  content  = "${random_id.random_values.hex}"
  filename = "p1.css"
}
resource "local_file" "file_block4" {
  content  = local.con
  filename = "p2.css"
}
resource "local_file" "file_block5" {
  content  = "${random_id.random_values2.hex}"
  filename = "styles.css"
}



locals {
  con="This is local content"
  secondcon="This is second local content"
}

resource "random_id" "random_values" {
  byte_length = 8
}
resource "random_id" "random_values2" {
  byte_length = 8
}
