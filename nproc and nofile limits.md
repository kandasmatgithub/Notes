### nproc (Number of processes and threads opened by a specific user)

```
for brand in RBS NWB ALL UBJ UBK
do
echo -n "$brand : "
ps -u <USER> -L -f |grep -i $brand|wc -l
done

```
### nofiles (Number of files opened by a specific user)

```
user=$1
while true
do
  date
  echo -n "### $user nofiles: "
  lsof -a -u $user -d ^mem -d ^cwd -d ^rtd -d ^txt -d ^DEL|wc -l
  echo "Sleeping for 2 seconds...."
  echo
  sleep 2
  done

```
