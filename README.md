# Yessos_infra
Yessos Infra repository

# Connection Through Bastion
Connection to internal netwok is configured through ~/.ssh/config using bastion machine with public IP.
Here is the configuration:

    Host bastion
    Hostname 35.246.188.64
    User appuser
    IdentityFile ~/.ssh/appuser

    Host interhost
    Hostname 10.156.0.5
    User appuser
    IdentityFile ~/.ssh/appuser
    ProxyCommand ssh -W %h:%p bastion

All we need to do is type `ssh interhost`. Interhost intself has no public IPs.

VPN connection addresses:

    bastion_IP = 35.246.188.64
    someinternalhost_IP = 10.156.0.5

Reddit APP info:

    testapp_IP = 34.90.143.218
    testapp_port = 9292

# Packer
Packer configuration created in ubuntu16.json file inside "packer" directory. Pararameters are done inside variables.json. Variables.json is excluded in .gitignore, variables.json.example should be used for validation instead.

# Terraform
Terraform configured inside folder terraform. Terraform apply deploys Reddit App into GCP.
