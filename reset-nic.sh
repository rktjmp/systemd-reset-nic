#!/bin/bash

PCI=`/usr/bin/lspci | /bin/egrep -i 'network|ethernet' | /usr/bin/cut -d' ' -f1`
PCIPATH=`/usr/bin/find /sys -name *\${PCI} | /bin/egrep -i *pci0000*`

/usr/bin/logger -t "ResetNIC" "Resetting PCI NIC ${PCIPATH}"

echo 1 > ${PCIPATH}/reset
