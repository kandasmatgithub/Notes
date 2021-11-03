**nproc**

for brand in RBS NWB ALL UBJ UBK
do
echo -n "$brand : "
ps -u <USER> -L -f |grep -i $brand|wc -l
done
  
**nproc and nofiles**

user=$1
while true
do
  date
  echo -n "### $user nofiles: "
  lsof -a -u $user -d ^mem -d ^cwd -d ^rtd -d ^txt -d ^DEL|wc -l
  echo -n "### $user nproc: "
  ps -u $user -L|wc -l
  
  echo "Sleeping for 2 seconds...."
  echo
  sleep 2
  done

