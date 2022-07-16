variable "github_owner" {
    type    = string 
    default = "library-ucsb"
}

variable "aws_region" {
  type      = string
  default = "us-west-2"  
}

variable "hosted_zones" {
    type = list(string)
}

variable "repo" {
  type = object({
    name                        = string
    description                 = string
    github_organization         = string
    github_enforce_admins       = bool
    github_allows_force_pushes  = bool
    github_push_restrictions    = list(string)
  })
}