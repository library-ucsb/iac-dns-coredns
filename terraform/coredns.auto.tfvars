github_owner            = "library-ucsb"
repo_name               = "iac-dns-coredns"
repo_description        = "coredns terraform"
repo_oauth_client_id    = "oc-pga3NiSumJzwPVft"
repo_tfc_org            = "library-ucsb-core"
repo_github_org         = "library-ucsb"

hosted_zones = [
    "arn:aws:route53:::hostedzone/Z0925576K83WAB2RR2FS",    # library.ucsb.edu
    "arn:aws:route53:::hostedzone/Z05095443RZ2T3IXXE5VY",   # alexandria.ucsb.edu
    "arn:aws:route53:::hostedzone/Z083898338YI6S69P5TIV"    # 87.111.128.in-addr.arpa
]