#### 服务对外方式:ingress

==TODO: 没有成功==

1. 查看路由明细
    ```bash
    kubectl describe ing  nginx-ingress
    ```
    结果如下：
    ```text
    Name:                   nginx-ingress
    Namespace:              default
    Address:                172.18.115.136
    Default backend:        default-http-backend:80 (<none>)
    Rules:
      Host  Path    Backends
      ----  ----    --------
      *
            /a      a-service:8081 (<none>)
            /b      b-service:8082 (<none>)
    Annotations:
      rewrite-target:       /
    ```
2. 访问下
    ```bash
    curl http://172.18.115.136  
    ```    