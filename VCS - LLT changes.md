### Dynamically modifying LLT config

```
lltconfig -a list
lltconfig -u eth0 => Remove eth0
lltconfig -a list
lltconfig -t eth3 -d eth-00:50:56:96:0D:C1 => Add eth3
lltconfig -a list

and 

vi /etc/llttab => Make the changes permanent
```
