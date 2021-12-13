## Container Runtime Interface (CRI)

K8s use the standardised CRI API calls to talk to various container runtimes that conforms to CRI standard.

```
K8s => CRI API => containerD
K8s => CRI API => CRIO
K8s => CRI API => DockerShim => containerD

Docker doesn't natively support the the standardised container runtime interface APIs. Hence K8s developed the dockershim to convert the CRI API calls to Docker code and 
the dockershim code is maintained by k8s team. Please note Docker support is being deprecated and dockershim will soon disappear from k8s code base.

```
