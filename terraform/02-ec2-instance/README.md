tf plan -out create_plan;

tf show -json create_plan > create_plan.json;
tf show -json destroy_plan > destroy_plan.json;

rm CREATE_FILE;

tf plan -out create_plan; tf show -json create_plan > create_plan.json; rm create_plan;

terraform plan -destroy -out destroy_plan

# Command to perform time sync in Linux machines
sudo apt-get install ntpdate
sudo ntpdate ntp.ubuntu.com