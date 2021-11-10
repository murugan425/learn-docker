#var.test_str
variable test_str {
  type = string
  default = "default string added in a tf file"
}

#var.test_map["my_key"]
variable test_map {
  type = map(string)
  default = {
    my_key: "default value in a map content"
  }
}

#var.test_map[n]
#element(var.test_list, n)
variable test_list {
  type = list
  default = [1,2,9,6]
}
