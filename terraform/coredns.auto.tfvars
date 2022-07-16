github_owner                = "library-ucsb"

hosted_zones = [
    "arn:aws:route53:::hostedzone/Z02600803IA0I0TCHM0GV",       # library.ucsb.edu
    "arn:aws:route53:::hostedzone/Z0698383335PF0QE6QOR1",       # alexandria.ucsb.edu
    "arn:aws:route53:::hostedzone/Z01908603CS9OAOT0VQV8"        # 87.111.128.in-addr.arpa
]

repo = {
    name                            = "iac-dns-coredns"
    description                     = "Contains IaC for the UCSB Library's CoreDNS Deployment"
    github_organization             = "library-ucsb"
    github_enforce_admins           = false
    github_allows_force_pushes      = true
    github_push_restrictions        = [] 
}