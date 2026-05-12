variable "project_name" {
  description = "Nom du projet"
  type        = string
  default     = "tp-terraform"
}

variable "host_port" {
  description = "Port sur la machine hôte"
  type        = number
  default     = 8080
}

variable "nginx_image" {
  description = "Image Docker utilisée pour le serveur web"
  type        = string
  default     = "nginx:alpine"
}