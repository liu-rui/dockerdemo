#### 服务对外方式:ingress

1. 查看路由明细
    ```bash
    kubectl describe ing  nginx-ingress
    ```
    结果如下：
    ```text
    Name:                   nginx-ingress
    Namespace:              default
    Address:                172.18.115.136
    Default backend:        a-service:8081 (10.42.187.102:80,10.42.46.193:80,10.42.61.255:80)
    Rules:
      Host  Path    Backends
      ----  ----    --------
      *     *       a-service:8081 (10.42.187.102:80,10.42.46.193:80,10.42.61.255:80)
    ```
2. 访问下
    ```bash
    curl http://172.18.115.136  
    ```    