######################################################
# REMOTE STATE
######################################################

# TF uses .tfstate & .tfstate.backup were created/modified whenever a `tf apply` is done to keep track of resource state

# Use a version control like GIT to keep track of these state files.

# tfstate can be saved in remote s3, consul or the tf enterprise using backend functionality

# Using remote state is far better than managing the state using version control no push & pull activities

# We can later use this remote state storage as a read only datastore to access the resource details.