# tfe_null_remote_pet 

### Purpose of the repository
- This repository uses remote state of another repository. 

### This project consist of 2 phases:
 - This [repository](https://github.com/nikcbg/tfe_null_remote_pet) tfe_null_remote_pet is phase 2 of the project.
 - This [respository](https://github.com/nikcbg/tfe_random_pet) tfe_random_pet is phase 1 of the project.

### List of the files in the repository
File name |	File description
----------|--------------------
.gitignore | list of files and directories to ignore.
main.tf	| Terraform configuration file.

### How to use this repository 
- Install `terraform` by following this [instructions](https://www.terraform.io/intro/getting-started/install.html).
- Clone the repository to your local computer: `git clone git@github.com:nikcbg/tfe_null_remote_pet`.
- Go to the cloned repo on your computer: `cd tfe_null_remote_pet`.
- Next you need to authenticate to your TFE so you can use the remote state in TFE that was created previously in pase 1:
  -go to TFE website and click on user settings in upper right corner.
  - then click on tokens on the left pane.
  - next name your token and click generate token.
  - make sure you copy and download your token and save it in secure place for future use.
- Next execute `export ATLAS_TOKEN=your_TFE_token_here to authenticate with TFE`.
- Next execute `terraform init` to download the necessary plugins.
- Next execute `terraform plan` to create execution plan and see what resources will be created.
- Next execute `terraform apply` to apply the desired chages.
- Next enter yes to the Enter a value prompt, the output should display the follwing:

```
null_resource.hello: Creating...
null_resource.hello: Provisioning with 'local-exec'...
null_resource.hello (local-exec): Executing: ["/bin/sh" "-c" "echo Hello formerly-commonly-curious-oriole"]
null_resource.hello (local-exec): Hello formerly-commonly-curious-oriole
null_resource.hello: Creation complete after 0s (ID: 1888045126688840499)

```
- If you compare the output from [phase 1](https://github.com/nikcbg/tfe_random_pet) repository and this phase 2 repository, you will see that the outputs are the same `formerly-commonly-curious-oriole` which means that both repositories are using the same state file. 
 
