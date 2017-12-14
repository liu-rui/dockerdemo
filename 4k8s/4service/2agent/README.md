#### 使用service代理外部的redis

1. 启动外部的redis server
    ```
    ./redis-server --port 7777  --protected-mode no  &
    ./redis-server --port 7778  --protected-mode no  &
    ```

2. 启动redis client，并启动监听

    ```
    ./redis-cli -p 7777
    ./redis-cli -p 7778
    ```

3. 上传redis-endpoint.yml和redis-service.yml

4. 查看redis-service信息
    ```bash
    kubectl describe service redis-service
    ```
5. 使用redis cli连接node的30004端口,执行操作并观察监听窗口的信息