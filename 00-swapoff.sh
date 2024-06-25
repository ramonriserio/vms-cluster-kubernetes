#!/bin/bash

sudo swapoff -a

if [ -f "/etc/fstab" ]; then
    # Comenta a linha referete ao swap
    sudo sed -i '/swap/ s/^/#/' /etc/fstab
    
    echo "Linha do swap comentada no arquivo /etc/fstab"
else
    echo "O arquivo /etc/fstab não foi encontrado."
fi