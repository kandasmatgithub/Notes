### How to obtain the server certificate presented by the server
```
openssl s_client –connect <SERVER_URL>:<PORT> 2>&1 | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' > /root/ad-cert.crt
```
