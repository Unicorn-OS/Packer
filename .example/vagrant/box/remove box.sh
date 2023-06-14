remove_image(){
vagrant box remove packer/ubuntu-20.04-desktop-amd64 --provider virtualbox
vagrant box remove packer/ubuntu-20.04-desktop-amd64 --provider libvirt

vagrant box remove packer/ubuntu-20.04-server-amd64 --provider virtualbox
vagrant box remove packer/ubuntu-20.04-server-amd64 --provider libvirt
}
