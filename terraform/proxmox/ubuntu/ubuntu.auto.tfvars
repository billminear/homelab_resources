common_vm_info = {
    tags = "ubuntu"
    nameserver = "DNS_HOST"
    clone_template = "template-ubuntu-24-10"
    storage_location = "STORAGE_LOCATION"
}

unique_vm_info = {
    vm_01 = {
        name = "ubuntu-host-01"
        vmid = 310
        ipconfig0 = "ip=HOST_IP/CIDR,gw=GATEWAY_IP"
        memory = 4096
        cores = 2
        sockets = 1
        vcpus = 0
        cpu = "host"
        storage_size = "80G"
    }
}