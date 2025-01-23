variable "location" {
  type = string
  default = "westeurope"
}

variables "tags" {
  type = map
  default = {
    "ambiente" = "desenvolvimento"
    "integracaocontinua" = "ativada"
    "entregacontinua" = "ativada"
  }
}
