### nproc (Number of processes and threads opened by a specific user)

```
for brand in RBS NWB ALL UBJ UBK
do
echo -n "$brand : "
ps -u <USER> -L -f |grep -i $brand|wc -l
done

```
