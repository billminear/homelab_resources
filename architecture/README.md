# Architecture
The following are details pertaining to the environment itself.
> **NOTE:** This is a work in progress.. probably forever.
### Applications and Services
Services hosted in the environment. Some to support the lab, some to support my 
family (internet, work, and fun) - all of them to learn.
- Proxmox
  - Description:
    - Hosting and management of virtual machines and their associated resources.
    Some of this is managed manually, some with automation tools. Ideally, over 
    time, more of it will become automated. A selection of the services hosted 
    on Proxmox is listed below.
  - Hosted Services:
    - Octoprint
    - Minecraft
    - Web Development Practice VMs
      - Flask
    - DevOps Practice VMs
      - Gitlab
      - k8s
    - Unifi Network Server
    - Ansible Hosts
    - Rocky and Ubuntu Linux Templates
    - Occasional ad-hoc VMs for testing various things.

### Network
One of my favorite parts of any environment - the network. I will be 
intentionally vague in places because - *security* - but, I'll try to provide 
details and resources where I feel comfortable doing so.
- Firewall/Router
  - OPNSense
- Core/Intermediate/Access Switching
  - Cisco 2960 PoE+
- WLAN
  - 2 x Ubiquiti UniFi 6 Lite WAPs
  - Unifi Network Server
- DHCP
  - OPNSense
- DNS
  - Pihole
- Architecture
  - Addressing
    - IPv4
    - 10.0.0.0/16 
      - A lazy approach but it's probably fine.
      - The second octet is used for segmentation.
  - VLANs
    - The network is segmented into various VLANs which support various purposes.
  Some of these are listed below.
      - IOT Devices
      - Work Devices
      - Personal Devices
      - Lab Hosts
      - Management

### Hardware 
- *Todo*

### Management Tools
- *Todo*