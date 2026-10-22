variable "nome_servidor" {
  description = "Nome do servidor simulado"
  type        = string
}

variable "porta_permitida" {
  description = "Porta liberada no grupo de segurança"
  type        = number
}

variable "ambiente" {
  description = "Ambiente de execução (dev, homolog, prod)"
  type        = string
}
