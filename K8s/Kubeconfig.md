## Location of kubeconfig

1. --kubeconfig command option
```
kubectl --kubeconfig=/etc/kubernetes/admin.conf get nodes
```
2. KUBECONFIG environment variable
```
export KUBECONFIG=/etc/kubernetes/admin.conf
kubectl get nodes
```
3. Placing the the copy of kubeconfig file in .kube dir in the users home directory. The file has to be named as config
```
cd /home/user1
mkdir .kube
cd .kube
cat /etc/kubernetes/admin.conf > config
kubectl get nodes
```
