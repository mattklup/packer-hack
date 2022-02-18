FROM mcr.microsoft.com/vscode/devcontainers/universal:1-linux

# ** [Optional] Uncomment this section to install additional packages. **
USER root

RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
RUN apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
RUN apt-get update && apt-get install packer

USER codespace