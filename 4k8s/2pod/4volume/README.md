1. 通过hostNetwork设置为true， 将容器的端口映射到物理机上
2. 启动后，查看pod部署到哪台物理机上

```
kubectl get pods  -o wide
```

3. 浏览器浏览 ip:80 

