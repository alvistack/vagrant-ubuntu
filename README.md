# Vagrant Box Packaging for Ubuntu

[![Gitlab pipeline status](https://img.shields.io/gitlab/pipeline/alvistack/vagrant-ubuntu/master)](https://gitlab.com/alvistack/vagrant-ubuntu/-/pipelines)
[![GitHub release](https://img.shields.io/github/release/alvistack/vagrant-ubuntu.svg)](https://github.com/alvistack/vagrant-ubuntu/releases)
[![GitHub license](https://img.shields.io/github/license/alvistack/vagrant-ubuntu.svg)](https://github.com/alvistack/vagrant-ubuntu/blob/master/LICENSE)
[![Vagrant Box download](https://img.shields.io/vagrant/pulls/alvistack/ubuntu.svg)](https://hub.vagrant.com/r/alvistack/ubuntu/)

GitLab is a complete DevOps platform, delivered as a single application. This makes GitLab unique and makes Concurrent DevOps possible, unlocking your organization from the constraints of a pieced together toolchain. Join us for a live Q\&A to learn how GitLab can give you unmatched visibility and higher levels of efficiency in a single application across the DevOps lifecycle.

Learn more about GitLab: <https://about.gitlab.com/>

## Supported Boxes and Respective Packer Template Links

  - [`alvistack/ubuntu-13.7`](https://app.vagrantup.com/alvistack/boxes/ubuntu-13.7)
      - [`libvirt`](https://github.com/alvistack/vagrant-ubuntu/blob/master/packer/libvirt-13.7/packer.json)
      - [`virtualbox`](https://github.com/alvistack/vagrant-ubuntu/blob/master/packer/virtualbox-13.7/packer.json)
  - [`alvistack/ubuntu-13.6`](https://app.vagrantup.com/alvistack/boxes/ubuntu-13.6)
      - [`libvirt`](https://github.com/alvistack/vagrant-ubuntu/blob/master/packer/libvirt-13.6/packer.json)
      - [`virtualbox`](https://github.com/alvistack/vagrant-ubuntu/blob/master/packer/virtualbox-13.6/packer.json)

## Overview

This Docker container makes it easy to get an instance of Ubuntu up and running.

Based on [Official Ubuntu Docker Image](https://hub.docker.com/_/ubuntu/) with some minor hack:

  - Packaging by Packer Docker builder and Ansible provisioner in single layer
  - Handle `ENTRYPOINT` with [catatonit](https://github.com/Ubuntu/catatonit)

### Quick Start

For the `VOLUME` directory that is used to store the repository data (amongst other things) we recommend mounting a host directory as a [data volume](https://docs.docker.com/engine/tutorials/dockervolumes/#/data-volumes), or via a named volume if using a docker version \>= 1.9.

Start Ubuntu:

    # Pull latest image
    docker pull alvistack/ubuntu
    
    # Run as detach
    docker run \
        -itd \
        --name ubuntu \
        --volume /etc/ubuntu:/etc/ubuntu \
        --volume /var/run/docker.sock:/var/run/docker.sock \
        alvistack/ubuntu

**Success**. Ubuntu is now available.

## Upgrade

To upgrade to a more recent version of Ubuntu you can simply stop the Ubuntu
container and start a new one based on a more recent image:

    docker stop ubuntu
    docker rm ubuntu
    docker run ... (see above)

As your data is stored in the data volume directory on the host, it will still
be available after the upgrade.

Note: Please make sure that you don't accidentally remove the ubuntu container and its volumes using the -v option.

## Backup

For evaluations you can use the built-in database that will store its files in the Ubuntu home directory. In that case it is sufficient to create a backup archive of the directory on the host that is used as a volume (`/var/opt/gitlab` in the example above).

## Versioning

### `alvistack/ubuntu:latest`

The `latest` tag matches the most recent [GitHub Release](https://github.com/alvistack/vagrant-ubuntu/releases) of this repository. Thus using `alvistack/ubuntu:latest` or `alvistack/ubuntu` will ensure you are running the most up to date stable version of this image.

### `alvistack/ubuntu:<version>`

The version tags are rolling release rebuild by [Travis](https://travis-ci.com/alvistack/vagrant-ubuntu) in weekly basis. Thus using these tags will ensure you are running the latest packages provided by the base image project.

## License

  - Code released under [Apache License 2.0](LICENSE)
  - Docs released under [CC BY 4.0](http://creativecommons.org/licenses/by/4.0/)

## Author Information

  - Wong Hoi Sing Edison
      - <https://twitter.com/hswong3i>
      - <https://github.com/hswong3i>
