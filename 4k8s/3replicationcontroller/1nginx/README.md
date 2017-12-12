#### replicationcontroller
1. rc是通过label与pod关联
2. 当container的标签发生更改后，会由于个数不够，rc会自动创建新的
3. 查看无前的container
```
kubectl get pod --selector=app=nginx-pod --namespace=test
```
4. 修改启用一个容器的标签
```
kubectl label pod nginx-controller-2pg1t app=nginx-pod1  --overwrite --namespace=test
```

5. 查看目前的container
```
kubectl get pod  --namespace=test --label-columns=app
```