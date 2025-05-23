#!/bin/bash

temp=$(sensors | awk '/k10temp-pci-00c3/,/^$/' | grep 'Tctl:' | awk '{print $2}' | tr -d '+°C')
echo "  ${temp}°C "
