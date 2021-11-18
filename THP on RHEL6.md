### Disabling Transparent Huge Pages on RHEL 6.x

```
 cat /proc/meminfo | grep -i huge
1. Update the grub.

 ls -l /boot/grub/grub.conf
 cp -rp /boot/grub/grub.conf /root
 vi /boot/grub/grub.conf

# Add the following in the kernel boot parameter.

transparent_hugepage=never

2. Update the kernel parameter.

 ls -l /etc/sysctl.conf
 cp -rp /etc/sysctl.conf /root
 echo 22000 > /proc/sys/vm/nr_hugepages
 sysctl -w vm.nr_hugepages=22000
 echo "vm.nr_hugepages=22000 " >> /etc/sysctl.conf
 grep HugePages_Total /proc/meminfo

3. Disable the THP

 cat /etc/tune-profiles/functions |grep THP 
 cp -rp /etc/tune-profiles/functions /root/
 vi /etc/tune-profiles/functions

# Modify the following line 
THP_ENABLE="/sys/kernel/mm/redhat_transparent_hugepage/enabled"

# To

THP_ENABLE="/dev/null"


 ls -l /etc/rc.local
 cp -rp /etc/rc.d/rc.local /root
 echo never > /sys/kernel/mm/redhat_transparent_hugepage/enabled
 echo never > /sys/kernel/mm/redhat_transparent_hugepage/defrag

 vi /etc/rc.local

#add following to /etc/rc.local to make it persistent
 
 if test -f /sys/kernel/mm/redhat_transparent_hugepage/enabled; then
       echo never > /sys/kernel/mm/redhat_transparent_hugepage/enabled
 fi
 if test -f /sys/kernel/mm/redhat_transparent_hugepage/defrag; then
     echo never > /sys/kernel/mm/redhat_transparent_hugepage/defrag
 fi

 
shutdown -r now


After reboot - Checm the huge page.

cat /proc/meminfo | grep -i huge.



=====  backout====
1. Revert back all the setting.

 cp -rp /root/grub.conf  /boot/grub/grub.conf 
 cp -rp /root/sysctl.conf  /etc/sysctl.conf 
 cp -rp /root/functions  /etc/tune-profiles/functions 
 cp -rp /root/rc.local /etc/rc.d/rc.local 

Reboot the server

shutdown -r now
```
