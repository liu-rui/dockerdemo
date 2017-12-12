1. 是否准备就绪是通过定期判断/tmp/healthy是否存在

2. 查看日志,有type为warning的记录

```
kubectl describe  pods  readiness-pod
```
3. 查看pod的重启次数 

```
kubectl  get pods readiness-pod
```