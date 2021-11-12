######################################################
# SOFTWARE PROVISIONING
######################################################
Multiple ways is possible, 

1. Build our own custom AMI's with the required software bundled in it by using PACKER.
2. Use the standard AWS AMI, then install the software using file uploads or remote exec scripts.

CHEF, ANSIBLE PLAYBOOK, PUPPET AGENT are multiple tools that can ease the software provisioning approach.

Approach 1: 
use file upload, copy the script/conf from your source to destination host.
then do remote exec to run the scripts which will do the software installation.
this remote exec can be done via ssh/winrm connection by using ssh key-pairs.[pp-nexturn]

# Generate SSH KeyPair before creating the instance.
# Note: don't use any passphrase to protect the private key
ssh-keygen
Enter file in which to save the key (/Users/murugan/.ssh/id_rsa): nxt-aws-ssh-key
Your identification has been saved in nxt-aws-ssh-key
Your public key has been saved in nxt-aws-ssh-key.pub





