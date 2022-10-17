packer {
  required_plugins {
    libvirt = {
      version = ">= 0.4.0"
      source  = "github.com/thomasklein94/libvirt"
    }
  }
}

source "libvirt" "example" {
  libvirt_uri = "qemu:///system"
  network_interface {
      type  = "managed"
      alias = "communicator"
  }

  volume {
    alias = "artifact"
    source {
        type   = "backing-store"
        pool   = "base-images"
        volume = "ubuntu-22.04-base"
    }

    capacity   = "10G"
    target_dev = "sda"
    bus        = "sata"
  }
}

build {
  sources = ["source.libvirt.example"]
}
