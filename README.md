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
