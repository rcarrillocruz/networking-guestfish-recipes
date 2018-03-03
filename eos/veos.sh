#!/bin/bash

cp veos.vmdk veos-bootstrapped.vmdk
guestfish -a veos-bootstrapped.vmdk <<'EOF'                                                                                                                     
run                                            
mount /dev/sda2 /                              
copy-in startup-config /                       
EOF
