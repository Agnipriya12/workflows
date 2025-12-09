# PingOne Provider Variables

#variable "pingone_client_id" {
 # description = "PingOne OAuth client ID"
#}

#variable "pingone_client_secret" {
 # description = "PingOne OAuth client secret"
  #sensitive   = true
#}

#variable "pingone_environment_id" {
 # description = "PingOne Environment ID"
#}

# DaVinci Provider Variables

variable "davinci_client_id" {
  description = "DaVinci OAuth client ID"
}

variable "davinci_client_secret" {
  description = "DaVinci OAuth client secret"
  sensitive   = true
}

variable "davinci_environment_id" {
  description = "DaVinci Environment ID"
}

variable "davinci_bearer_token" {
  type        = string
  description = "Bearer token for DaVinci API"
  sensitive   = true
}


