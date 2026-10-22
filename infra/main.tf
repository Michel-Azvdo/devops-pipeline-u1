terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

# Simula um serviço de computação (servidor)
resource "local_file" "servidor" {
  filename = "${path.module}/saida/${var.nome_servidor}.txt"
  content  = "Servidor: ${var.nome_servidor}\nAmbiente: ${var.ambiente}\n"
}

# Simula um grupo de segurança (regra de firewall)
resource "local_file" "grupo_seguranca" {
  filename = "${path.module}/saida/sg-${var.nome_servidor}.txt"
  content  = "Regra: permitir TCP na porta ${var.porta_permitida}\n"
}
