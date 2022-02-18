# packer-hack

## packer tutorial

Start from [here](https://learn.hashicorp.com/tutorials/packer/docker-get-started-build-image?in=packer/docker-get-started)

```
# From /packer/tutorial
packer init .
packer fmt .
packer validate .
packer build docker-ubuntu.pkr.hcl
docker images
```

## Codespace setup

```bash
az login --use-device-code
az account set --subscription rguthrie
az account show
```