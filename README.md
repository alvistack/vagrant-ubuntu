# Vagrant Box Packaging for Ubuntu

<a href="https://alvistack.com" title="AlviStack" target="_blank"><img src="/alvistack.svg" height="75" alt="AlviStack"></a>

[![GitLab pipeline status](https://img.shields.io/gitlab/pipeline/alvistack/vagrant-ubuntu/master)](https://gitlab.com/alvistack/vagrant-ubuntu/-/pipelines)
[![GitHub tag](https://img.shields.io/github/tag/alvistack/vagrant-ubuntu.svg)](https://github.com/alvistack/vagrant-ubuntu/tags)
[![GitHub license](https://img.shields.io/github/license/alvistack/vagrant-ubuntu.svg)](https://github.com/alvistack/vagrant-ubuntu/blob/master/LICENSE)
[![Vagrant Box download](https://img.shields.io/badge/dynamic/json?label=alvistack%2Fubuntu-22.04&query=%24.boxes%5B%3A1%5D.downloads&url=https%3A%2F%2Fapp.vagrantup.com%2Fapi%2Fv1%2Fsearch%3Fq%3Dalvistack%2Fubuntu-22.04)](https://app.vagrantup.com/alvistack/boxes/ubuntu-22.04)

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things. It is the world's most popular operating system across public clouds and OpenStack clouds. It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale. Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

Learn more about Ubuntu: <https://ubuntu.com/>

## Supported Boxes and Respective Packer Template Links

  - [`alvistack/ubuntu-22.10`](https://app.vagrantup.com/alvistack/boxes/ubuntu-22.10)
      - [`packer/ubuntu-22.10-libvirt/packer.json`](https://github.com/alvistack/vagrant-ubuntu/blob/master/packer/ubuntu-22.10-libvirt/packer.json)
      - [`packer/ubuntu-22.10-virtualbox/packer.json`](https://github.com/alvistack/vagrant-ubuntu/blob/master/packer/ubuntu-22.10-virtualbox/packer.json)
  - [`alvistack/ubuntu-22.04`](https://app.vagrantup.com/alvistack/boxes/ubuntu-22.04)
      - [`packer/ubuntu-22.04-libvirt/packer.json`](https://github.com/alvistack/vagrant-ubuntu/blob/master/packer/ubuntu-22.04-libvirt/packer.json)
      - [`packer/ubuntu-22.04-virtualbox/packer.json`](https://github.com/alvistack/vagrant-ubuntu/blob/master/packer/ubuntu-22.04-virtualbox/packer.json)
  - [`alvistack/ubuntu-20.04`](https://app.vagrantup.com/alvistack/boxes/ubuntu-20.04)
      - [`packer/ubuntu-20.04-libvirt/packer.json`](https://github.com/alvistack/vagrant-ubuntu/blob/master/packer/ubuntu-20.04-libvirt/packer.json)
      - [`packer/ubuntu-20.04-virtualbox/packer.json`](https://github.com/alvistack/vagrant-ubuntu/blob/master/packer/ubuntu-20.04-virtualbox/packer.json)
  - [`alvistack/ubuntu-18.04`](https://app.vagrantup.com/alvistack/boxes/ubuntu-18.04)
      - [`packer/ubuntu-18.04-libvirt/packer.json`](https://github.com/alvistack/vagrant-ubuntu/blob/master/packer/ubuntu-18.04-libvirt/packer.json)
      - [`packer/ubuntu-18.04-virtualbox/packer.json`](https://github.com/alvistack/vagrant-ubuntu/blob/master/packer/ubuntu-18.04-virtualbox/packer.json)

## Overview

  - Packaging with [Packer](https://www.packer.io/)
  - Minimal [Vagrant base box implementation](https://www.vagrantup.com/docs/boxes/base)
  - Support [QEMU Guest Agent](https://wiki.qemu.org/Features/GuestAgent)
  - Support [VirtualBox Guest Additions](https://www.virtualbox.org/manual/ch04.html)
  - Support [Vagrant synced folder with rsync](https://www.vagrantup.com/docs/synced-folders/rsync)
  - Support [Vagrant provisioner with Ansible](https://www.vagrantup.com/docs/provisioning/ansible)
  - Standardize disk partition with GPT
  - Standardize file system mount with UUID
  - Standardize network interface with `eth0`

### Quick Start

Once you have [Vagrant](https://www.vagrantup.com/docs/installation) and [VirtaulBox](https://www.virtualbox.org/) installed, run the following commands under your [project directory](https://learn.hashicorp.com/tutorials/vagrant/getting-started-project-setup?in=vagrant/getting-started):

    # Initialize Vagrant
    vagrant init alvistack/ubuntu-22.04
    
    # Start the virtual machine
    vagrant up
    
    # SSH into this machine
    vagrant ssh
    
    # Terminate the virtual machine
    vagrant destroy --force

### Molecule

You could also run our [Molecule](https://molecule.readthedocs.io/en/stable/) test cases if you have [Vagrant](https://www.vagrantup.com/) and [Libvirt](https://libvirt.org/) installed, e.g.

    # Run Molecule on Ubuntu 22.04
    molecule converge -s ubuntu-22.04-libvirt

Please refer to [.gitlab-ci.yml](.gitlab-ci.yml) for more information on running Molecule.

## Versioning

### `YYYYMMDD.Y.Z`

Release tags could be find from [GitHub Release](https://github.com/alvistack/vagrant-ubuntu/tags) of this repository. Thus using these tags will ensure you are running the most up to date stable version of this image.

### `YYYYMMDD.0.0`

Version tags ended with `.0.0` are rolling release rebuild by [GitLab pipeline](https://gitlab.com/alvistack/vagrant-ubuntu/-/pipelines) in weekly basis. Thus using these tags will ensure you are running the latest packages provided by the base image project.

## License

  - Code released under [Apache License 2.0](LICENSE)
  - Docs released under [CC BY 4.0](http://creativecommons.org/licenses/by/4.0/)

## Author Information

  - Wong Hoi Sing Edison
      - <https://twitter.com/hswong3i>
      - <https://github.com/hswong3i>
