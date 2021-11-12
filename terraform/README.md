######################################################
# TERRAFORM COMMANDS
######################################################
tf init

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

terraform plan -destroy -out destroy_plan
