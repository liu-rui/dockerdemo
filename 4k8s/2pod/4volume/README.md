1. 定义卷存储data,映射到物理机/tmp目录
2. 定义2个容器，一个负责读，一个负责写
3. 2个容器将data映射到/data目录
4. 查看负责[读]容器的日志
```
kubectl logs volume-pod read
```
5. 查看物理机上/tmp目录
* 获取pod 部署到了哪台物理机上
```
kubectl  get pods  volume-pod --template={{.status.hostIP}}
```
* 查看/tmp是否有hello文件
```
cd /tmp && ls && cat hello
```

