 > 参考：https://v1-7.docs.kubernetes.io/docs/tasks/configure-pod-container/assign-pods-nodes/



#### 将pod分配到指定的node上

1. 查看所有的node

```
kubectl get nodes 
```

2. 分配标签

```
kubectl label nodes rancher135 disktype=ssd
```

3. 查看所有的node,包括标签

```
kubectl  get nodes --show-labels
```

4. 部署pod

5. 显示pod部署信息，可以看到部署到了rancher135的node上了

```
kubectl get pods assign-pod -o wide
```