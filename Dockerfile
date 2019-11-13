FROM hashicorp/packer:light

LABEL Name=packer-vsphere

RUN wget https://github.com/jetbrains-infra/packer-builder-vsphere/releases/download/v2.3/packer-builder-vsphere-clone.linux -P /bin/ && \
    wget https://github.com/jetbrains-infra/packer-builder-vsphere/releases/download/v2.3/packer-builder-vsphere-iso.linux -P /bin/

RUN chmod a+x /bin/packer-builder-vsphere*
