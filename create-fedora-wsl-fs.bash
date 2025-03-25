#!/bin/bash
OS_VERSION=41
WSL_FS_VERSION=0
OUTPUT_FILE=fedora.wsl.rootfs.$(uname -m).${OS_VERSION}.${WSL_FS_VERSION}.tar
cd fedora-wsl
podman pull registry.fedoraproject.org/fedora:${OS_VERSION}
podman build --tag fedora-wsl:${OS_VERSION}.${WSL_FS_VERSION} --tag fedora-wsl:latest .
cd ..
podman create --name fedora-wsl-export localhost/fedora-wsl:latest
podman export -o ${OUTPUT_FILE} fedora-wsl-export
podman rm fedora-wsl-export
gzip ${OUTPUT_FILE}

