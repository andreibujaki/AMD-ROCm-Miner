#!/bin/bash
#Here is the example for the dreaded pirate roberts 570 samsung nitro's
#set fan to 50%
/opt/rocm/bin/rocm-smi --setfan 130 
#set GPU clock frequency mask
/opt/rocm/bin/rocm-smi -d 0 --setsclk 4
/opt/rocm/bin/rocm-smi -d 1 --setsclk 6

#Use the command to find all the cards at once
#find /sys | grep power_dpm_state
#find /sys | grep power_dpm_force_performance_level

echo performance > /sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0/power_dpm_state
echo performance > /sys/devices/pci0000:00/0000:00:01.1/0000:02:00.0/power_dpm_state
echo manual> /sys/devices/pci0000:00/0000:00:01.1/0000:02:00.0/power_dpm_force_performance_level
echo manual > /sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0/power_dpm_force_performance_level

#Run the first command and then then it will give you the find command to run to
#get the over drive paths

#lspci | grep VGA | awk '{print $1}'| sed s/^/find\ \\/sys\ \|\ egrep\ \-v\ volt\|grep\ od\|grep\ clk\|grep\ /

#find /sys | egrep -v volt|grep od|grep clk|grep 01:00.0

#echo 2 > /sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0/pp_mclk_od
#echo 5 > /sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0/pp_sclk_od
