####  
1. 首先 PersistentVolume指定的目录/myvolume需要存在
    ```bash
    mkdir /myvolume
    ```

2. 进入容器test

    ```bash
    kubectl exec test -it -- sh
    cd /data/
    echo "hello" >> 1.txt
    cat /data/1.txt
    ```
3. 查看宿主机上/myvolume是否存在1.txt