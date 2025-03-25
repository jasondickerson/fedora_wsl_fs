# Fedora WSL Filesystem

## Description

This project creates a Fedora Distribution Filesystem TAR Archive which can be imported into WSL 2.  The packages installed support Ansible Development using Fedora on WSL 2.  For more information on running Ansible via Fedora on WSL see [ansible_wsl](https://github.com/jasondickerson/ansible_wsl).  

## How to use this repository

### Prerequisites

- Fedora Linux
- podman
- Windows system capable of running WSL 2

### Create the WSL Fedora Filesystem Archive

Clone this repository to a Fedora Linux system with podman installed.  

Run the script:

    # create-fedora-wsl-fs.bash

This will create the Archive file.  

### Install Fedora WSL

Copy the Archive file to the Windows system running WSL 2.  

If WSL 2 is not yet installed, run the following:

    > wsl.exe --install --no-distribution

Copy the myfedora.ps1 script to the Windows system running WSL 2.

To install the Fedora Filesystem in WSL, run the following:

    > myfedora.ps1 <archive_file>

where <archive_file> is the name of the Archive file you created.

The myfedora.ps1 script will install Fedora WSL, configure your default user (using your current windows login user name), and prompt you to enter and confirm your Fedora Linux User Password.  

### Using Fedora WSL

The following commands are run from a Windows command or PowerShell prompt.  

Fedora WSL can now be started using the following command:

    > wsl.exe --cd ~ -d MyFedora

The "--cd ~" ensures you are logged into your Fedora Linux User Home Directory.

To set MyFedora as the default WSL distribution, run the following command:

    > wsl.exe -s MyFedora

If MyFedora is the default distribution the command to run the distribution can be shortened to:

    > wsl.exe --cd ~
