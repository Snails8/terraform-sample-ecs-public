variable "app_name" {
  type = string
  default = "sample"
}

# AZ の設定(冗長化のため配列でlist化してある)
variable "azs" {
  type = list(string)
  default = ["ap-northeast-1a", "ap-northeast-1c", "ap-northeast-1d"]
}

# ELB で使用 https化に使う
variable "domain" {
  type = string
  default = "sample.com"
}

# acm で使用 (TLS証明書)
variable "zone" {
  type = string
  default = "sample.com"
}

variable "LOKI_USER" {
  type = string
}

variable "LOKI_PASS" {
  type = string
}

variable "test_enviroment" {
  default = true
  # default = false
}

# RDS で使用
variable "DB_NAME" {
  type = string
}

variable "DB_MASTER_NAME" {
  type = string
}

variable "DB_MASTER_PASS" {
  type = string
}