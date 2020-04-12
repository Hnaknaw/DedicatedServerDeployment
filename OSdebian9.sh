##########
## NACA DEBIAN SERVER CONFIGURATION
## AUSTIN STARLING
## 04.09.2020
##########

#Install OpenSSH
apt-get install ssh openssh-server
#SSH Configuration
#SSH through port 4815 instead of 22
echo 'Port 4815' >> /etc/ssh/sshd_config
#Allow root SSH login
echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config
#Restart SSH service
/etc/init.d/ssh restart
