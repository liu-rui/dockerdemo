1. 是否存活是通过定期判断/tmp/healthy是否存在，当死掉时，kubernetes会重启容器。

2. 查看日志

```
kubectl describe  pods  liveness-pod
```
3. 查看pod的重启次数

```
kubectl  get pods liveness-pod
```