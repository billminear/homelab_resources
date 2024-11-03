common_vm_info = {
    tags = "rocky"
    nameserver = "DNS_HOST"
    clone_template = "template-rocky-9"
    storage_location = "STORAGE_LOCATION"
}

unique_vm_info = {
    vm_01 = {
        name = "rocky-host-01"
        vmid = 310
        ipconfig0 = "gw=GATEWAY_IP,ip=HOST_IP/CIDR"
        memory = 8192
        cores = 2
        sockets = 1
        vcpus = 0
        cpu = "host"
        storage_size = "200G"
    }
    vm_02 = {
        name = "rocky-host-02"
        vmid = 311
        ipconfig0 = "gw=GATEWAY_IP,ip=HOST_IP/CIDR"
        memory = 4096
        cores = 2
        sockets = 1
        vcpus = 0
        cpu = "host"
        storage_size = "80G"
    }
}