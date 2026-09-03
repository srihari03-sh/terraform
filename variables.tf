variable "filename" {
  description = "File path where the pet file will be created"
  type        = string
  default     = "/tmp/pets.txt"
}
variable "content" {
  description = "Content to be written into the pet file"
  type        = string
  default     = "my horse is black in colour!"
}
variable "prefix" {
  description = "Prefix for the random pet name"
  type        = string
  default     = "MR"
}
variable "separator" {
  description = "Separator used in the random pet name"
  type        = string
  default     = "."
}
variable "length" {
  description = "Number of words in the random pet name"
  type        = number
  default     = 1
}
