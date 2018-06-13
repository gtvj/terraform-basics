variable "instance-type" {
  type = "string"
  default = "t2.micro"
}

// Output variables

output "first_output" {
  value = "This is the value through execution"
}