variable "github_owner" {
    type    = string 
    default = "library-ucsb"
}

variable "repo_name" {
    type = string
}

variable "repo_description" {
    type = string
}

variable "repo_tfc_org" {
    type = string
}

variable "repo_oauth_client_id" {
    type = string
}

variable "repo_github_org" {
    type = string
}

variable "hosted_zones" {
    type = list(string)
}

