#var.test_str
variable test_str {
  type = string
  default = "default string added in a tf file"
}

#var.test_map["my_key"]
#lookup(var.test_map, "my_key")
variable test_map {
  type = map(string)
  description = "Sample/Test Map data structure"
  default = {
    my_key: "default value in a map content"
    num_key: 121212
  }
}

#var.test_map[n]
#element(var.test_list, n)
variable test_list {
  type = list(any)
  default = [1,2,9,6]
}

variable test_num {
  type = number
  default = 1.0
}

variable test_bool {
  type = bool
  default = true
}

variable test_set {
  type = set(number)
  default = [9, 3, 1, 4, 7]
}

variable test_tuple {
  type = tuple([string, number, string, bool, bool])
  default = ["alpha", 4.1234, 900, true, "false"]
}

variable test_obj {
  type = object({
    name = string
    mob = number
  })
  default = {
    name =  "Murugan"
    mob = 18116193643
  }
}