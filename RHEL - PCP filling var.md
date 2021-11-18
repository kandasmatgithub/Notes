To avoid /var/log getting filled due to PCP, set the CULLAFTER parameter  to a lower value (8) in file /usr/libexec/pcp/bin/pmlogger_daily
and set the pcp-pmlogger cron entry in /etc/cron.d to compress logs after two days (default is three I believe).

```
#daily processing of archive logs (with compression enabled)
10     0  *  *  *  pcp  /usr/libexec/pcp/bin/pmlogger_daily -X xz -x 2
```
