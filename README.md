# Welcome to Homelab Resources
This repository is home to various resources which I use to build and maintain
my homelab environment. I use this environment to learn, practice, and have fun.
It's a labor of love. I hope you find something useful and enjoy.

> **NOTE:** Reources that I share here will be genericized to the best of my ability 
at the time. This is to avoid sharing any details which may not need sharing.
Usage of resources may require and/or benefit from customization to meet your needs.
As with everything - be mindful and use with caution.

## Directories
### Docs
- Guides and information which I've collected and compiled while researching,
building, and maintaining my environment. I try to be concise, descriptive,
and practical.

  > **NOTE:** I'm by no means an expert but will **try** to do things correctly. 
  Because of this, please be mindful when using these guides, if you do. 
  The guides are primarily steps taken from other guides on the internet
  (thank you to those people) which worked for me. I'll try to include links
  to some notable guides if I can.

### Ansible
- Playbooks, etc.
- *Todo*

### Python
- Scripts, etc.
- *Todo*

### Terraform
- Plans, var files, etc.
- Things I'm learning:
  - Terraform directory/file organization.
  - Effecient ways to construct Terraform files.
  - Efficient ways to deploy resources.

## Infrastructure
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
- Firewall
  - OPNSense
- Router
  - OPNSense
- Core/Intermediate/Access Switching
  - Cisco 2960 PoE+
- WLAN
  - 2 x Ubiquiti UniFi 6 Lite WAPs
  - Unifi Network Server

### Hardware 
- *Todo*

### Management Tools
- *Todo*