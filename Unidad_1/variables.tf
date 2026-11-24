variable "region" {
  description = "Región AWS"
  type        = string
  default     = "us-east-1"
}
variable "project_name" {
  description = "Nombre de proyecto"
  type        = string
  default     = "environment-project-1"
}
variable "environment" {
  description = "Entorno de despliegue"
  type        = string
}