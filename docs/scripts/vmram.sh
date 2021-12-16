#!/bin/sh

echo "VM Name?: "
read VMNAME
VBoxManage modifyvm "$VMNAME" --vram 256
