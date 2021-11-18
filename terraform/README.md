#*****************************************************
# TERRAFORM COMMANDS
#*****************************************************

######################################################
# CREATE EC2 INSTANCE
######################################################
`tf init

tf console

tf plan

tf apply

tf plan -out CREATE_FILE

tf show -json CREATE_FILE

tf apply | tf plan -out file; tf apply file; rm file

tf plan -out create_plan;

tf show -json create_plan > create_plan.json;

rm CREATE_FILE;

tf plan -out create_plan; tf show -json create_plan > create_plan.json; rm create_plan;

terraform plan -destroy -out destroy_plan`

######################################################
# CREATE EC2 INSTANCE - PROPER TF FILE FORMATS
######################################################
`tf plan -out create_plan;

tf show -json create_plan > create_plan.json;
tf show -json destroy_plan > destroy_plan.json;

rm CREATE_FILE;

tf plan -out create_plan; tf show -json create_plan > create_plan.json; rm create_plan;

terraform plan -destroy -out destroy_plan
`# Command to perform time sync in Linux machines
`sudo apt-get install ntpdate
sudo ntpdate ntp.ubuntu.com`

######################################################
# CREATE EC2 INSTANCE - SCRIPTS FOR S/W PROVISIONING
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

#If the ssh connection to the ec2 instance needs to be done manually,
`chmod 400 nxt-aws-ssh-key
ssh -i "nxt-aws-ssh-key" ubuntu@<**ec2id**>.compute-1.amazonaws.com
`
######################################################
# OUTPUT ATTRIBUTES
######################################################

`output "instance-current-state" {
    value = aws_instance.nxt_ec2_04.instance_state
}`

# After applying the tf scripts, the console will display the output attributes.
# We can either use these attributes as a parameter to other software provisioning tools or in downstream scripts


