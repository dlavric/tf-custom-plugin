# tf-custom-plugin

This repository is just for learning Terraform OSS and using a custom plugin locally.

The following custom plugin has been used here: https://github.com/petems/terraform-provider-extip

### Prerequisites
- [X] [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

- [X] [Vagrant](https://www.vagrantup.com/downloads)

- [X] [Terraform](https://www.terraform.io/downloads)


## How to Use this Repo

- Clone this repository:
```shell
git clone git@github.com:dlavric/tf-custom-plugin.git
```

- Go to the directory where the repo is stored:
```shell
cd tf-custom-plugin
```

- Start Vagrant
```shell
vagrant up
```

- Connect to the VM
```shell
vagrant ssh
```

- Go to the following directory
```shell
cd /vagrant
```

- Run `terraform init`, to download any external dependency
```shell
terraform init
```


This is the output of initializing the Terraform code:
```shell
Initializing provider plugins...

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```

- Apply the changes with Terraform
```shell
terraform apply
```

This is the output for applying the changes:
```shell
data.extip.external_ip: Refreshing state...

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

external_ip = 46.244.106.52
```

- Destroy the created resources:
```shell
terraform destroy

data.extip.external_ip: Refreshing state...
Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes


Destroy complete! Resources: 0 destroyed.
```


- Logout from the Vagrant virtual machine
```shell
logout
```

- Destroy the Virtual Machine
```shell
vagrant destroy
```