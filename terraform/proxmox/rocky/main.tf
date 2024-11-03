variable pm_api_url {sensitive = true}
variable pm_api_token_id {sensitive = true}
variable pm_api_token_secret {sensitive = true}
variable common_vm_info {}
variable unique_vm_info {}

terraform {
  required_providers {
    proxmox = {
      source = "telmate/proxmox"
      version = "3.0.1-rc4"
    }
  }
}

provider "proxmox" {
 pm_api_url = var.pm_api_url
 pm_api_token_id = var.pm_api_token_id
 pm_api_token_secret = var.pm_api_token_secret
 pm_tls_insecure = true
}

resource "proxmox_vm_qemu" "vms" {
    for_each = var.unique_vm_info
    tags = var.common_vm_info.tags
    name = each.value.name
    target_node = "proxmox"
    clone = var.common_vm_info.clone_template
    full_clone = true
    vmid = each.value.vmid
    agent = 1
    os_type = "cloud_init"
    cores = each.value.cores
    sockets = each.value.sockets
    vcpus = each.value.vcpus
    cpu = each.value.cpu
    memory = each.value.memory
    scsihw = "virtio-scsi-single"
    boot = "order=scsi0"
    ipconfig0 = each.value.ipconfig0
    nameserver = var.common_vm_info.nameserver

    disks {
    ide {
        ide0 {
            cloudinit {
                storage = var.common_vm_info.storage_location  
            }
        }
    }
    scsi {
        scsi0 {
            disk {
                size = each.value.storage_size
                storage = var.common_vm_info.storage_location  
                iothread = true
            }
        }
    }
    }
    serial {
        id = 0
        type = "socket"
    }
}