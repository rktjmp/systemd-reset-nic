#!/bin/bash

ip link set down eno1

/root/reset-nic.sh

ip link set up eno1
