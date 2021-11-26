## Sar data collection interval
```
root@Server# cat /etc/cron.d/sysstat
# Run system activity accounting tool every 01 minutes
*/1 * * * * root /usr/lib64/sa/sa1 1 1        => Change to */1 to */5 to collect the stats every 5 mins
# 0 * * * * root /usr/lib64/sa/sa1 600 6 &
# Generate a daily summary of process accounting at 23:53
53 23 * * * root /usr/lib64/sa/sa2 -A
root@Server#
```


## Sar data retention
```
# cat /etc/sysconfig/sysstat
# How long to keep log files (days), maximum is a month
HISTORY=30
#
```
