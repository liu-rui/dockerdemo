> 参考：https://v1-7.docs.kubernetes.io/docs/tasks/configure-pod-container/configure-pod-initialization/

#### 使用初始化容器初始化环境

1. nginx的首页由初始化容器install通过wget获得到

2. 获取pod信息

```
kubectl get pod init-pod
```

3. 通过shell进入nginx容器

```
kubectl exec init-pod -c nginx -it -- /bin/bash
```

4. 安装curl,然后显示nginx首页

```
apt-get update
apt-get install curl
curl localhost
```