variable "var_filename" {
  type=string
  description = "Enter the value:"
}
variable "var_content" {
  type=string
  description="content:"
}
variable "list" {
  type=list(string)
}
variable "map1" {
  type = map(string)
  default = {
    "one" = "first map"
    "two"="second map"
    "third"="third map"
  }
}
variable "var-obj" {
  type = object({
      f-name=string
      con=string
  })
}

