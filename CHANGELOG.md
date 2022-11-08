# Vagrant Box Packaging for Ubuntu

## YYYYMMDD.Y.Z - TBC

### Major Changes

## 20221014.1.1 - 2022-10-14

### Major Changes

-   Support Ansible community package 6.5.0
-   Support Ubuntu 22.10

## 20220915.1.1 - 2022-09-15

### Major Changes

-   Support Ansible community package 6.4.0

## 20220824.1.1 - 2022-08-24

### Major Changes

-   Support Ansible community package 6.3.0

## 20220803.1.1 - 2022-08-03

### Major Changes

-   Support Ansible community package 6.2.0

## 20220714.1.1 - 2022-07-14

### Major Changes

-   Support Ansible community package 6.1.0
-   Remove Ubuntu 21.10 support

## 20220622.1.1 - 2022-06-22

### Major Changes

-   Support Ansible community package 6.0.0

## 20220608.1.1 - 2022-06-08

### Major Changes

-   Support Ansible community package 5.9.0

## 20220520.1.1 - 2022-05-20

### Major Changes

-   Support Ansible community package 5.8.0
-   Remove Fedora 34 support

## 20220427.1.1 - 2022-04-27

### Major Changes

-   Rename Ansible Role with FQCN
-   Support Ansible community package 5.7.0
-   Support RHEL 9
-   Support CentOS 9 Stream
-   Support openSUSE Leap 15.4

## 20220407.1.2 - 2022-04-07

### Major Changes

-   Support Ansible community package 5.6.0
-   Support Fedora 36
-   Support Ubuntu 22.04
-   Support Ansible community package 5.5.0
-   Support Ansible community package 5.4.0

## 20220211.1.1 - 2022-02-11

### Major Changes

-   Remove Ubuntu 21.04 support
-   Skip package upgrade before running molecule

## 20211231.1.3 - 2021-12-31

### Major Changes

-   Support Fedora Rawhide
-   Support Debian Testing
-   Remove openSUSE Leap 15.2 support
-   Upgrade minimal Ansible community package support to 4.10

## 20211020.1.1 - 2021-10-20

### Major Changes

-   Remove Ubuntu 20.10 support
-   Support Ubuntu 21.10
-   Install dependencies with package manager
-   Upgrade minimal Ansible community package support to 4.7.0

## 20210718.1.1 - 2021-07-18

### Major Changes

-   Upgrade minimal Ansible community package support to 4.2.0

## 20210602.1.1 - 2021-06-02

### Major Changes

-   Initialize with `verify.yml` with first start
-   Upgrade minimal Ansible support to 4.0.0
-   Support Ubuntu 21.04

## 20210313.1.1 - 2021-03-13

### Major Changes

-   Bugfix [ansible-lint `namespace`](https://github.com/ansible-community/ansible-lint/pull/1451)
-   Bugfix [ansible-lint `no-handler`](https://github.com/ansible-community/ansible-lint/pull/1402)
-   Bugfix [ansible-lint `unnamed-task`](https://github.com/ansible-community/ansible-lint/pull/1413)

## 20210116.1.0 - 2021-01-16

### Major Changes

-   Support [QEMU Guest Agent](https://wiki.qemu.org/Features/GuestAgent)
-   Support [VirtualBox Guest Additions](https://www.virtualbox.org/manual/ch04.html)

## 20210114.1.0 - 2021-01-14

-   Packaging with [Packer](https://www.packer.io/)
-   Minimal [Vagrant base box implementation](https://www.vagrantup.com/docs/boxes/base)
-   Support [Vagrant synced folder with rsync](https://www.vagrantup.com/docs/synced-folders/rsync)
-   Support [Vagrant provisioner with Ansible](https://www.vagrantup.com/docs/provisioning/ansible)
-   Standardize disk partition with GPT
-   Standardize file system mount with UUID
-   Standardize network interface with `eth0`
