## How to find the total shared memory in use
```
ipcs -m | awk '{ SUM += $5} END { print SUM }'
```
