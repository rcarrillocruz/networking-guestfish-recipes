#!/bin/bash

cp iosv.qcow2 iosv-bootstrapped.qcow2
guestfish -a iosv-bootstrapped.qcow2 <<'EOF'                                                                                                                     
run                                            
mount /dev/sda1 /                              
copy-in ios_config.txt /                       
EOF
