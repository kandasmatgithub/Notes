**Force a manual resync of NTP**

date

systemctl stop ntp

ntpd -gq

date

systemctl start ntpd

root@Server# ntpstat

synchronised to NTP server (11.0.65.40) at stratum 4

   time correct to within 32 ms
   
   polling server every 1024 s
   
root@Server#

