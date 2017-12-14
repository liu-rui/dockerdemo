#### 滚动升级

升级方式
1. 只升级镜像，从1升级到2

    * 上传rollingupdate-controller.yml
    * 扩容
    ```bash
    kubectl scale  --replicas=2 rc/rollingupdate-controller  
    kubectl get rc rollingupdate-controller -o wide
    ```
    * 升级镜像版本到2
    ```bash
    # 输入了一个错误的镜像
    kubectl rolling-update rollingupdate-controller --image=rollingupdatedemo:2
    # 回滚
    kubectl rolling-update rollingupdate-controller --rollback
    kubectl rolling-update rollingupdate-controller --image=myregistry.com/rollingupdatedemo:2
    kubectl get rc rollingupdate-controller -o wide
    ```
2. 使用新的replicationController文件进行升级，针对于不止镜像变更，还有环境变量等的变更。

    * 上传rollingupdate-controller.yml
    * 扩容
    * 上传rollingupdate-v3-controller.yml
        * 在kubectl控制台中，使用 vi rollingupdate-v3-controller.yml
        * replicas必须大于0
        * replicationController的名称不能相同
    * 升级
    ```bash
    kubectl rolling-update rollingupdate-controller -f rollingupdate-v3-controller.yml
    ```
3. 使用deployment
    > 参考: https://v1-7.docs.kubernetes.io/docs/concepts/workloads/controllers/deployment/
    * 上传rollingupdate-deployment.yml
    * 查看
        ```bash
        kubectl  get deploy -o wide
        ```
    * 通过kubernetes ui 更新rollingupdate-deployment.yml,将image版本改为3
        ```bash
            kubectl  edit deployment/rollingupdate-deployment
        ```
    * 查看下状态，kubernetes自动滚动升级
        ```bash
          ubectl rollout status deployment/rollingupdate-deployment
        ```
    * 查看
        ```bash
        kubectl  get deploy -o wide
        ```
    * 查看所有的版本
        ```bash
         kubectl rollout history deployment/rollingupdate-deployment
        ```    
    * 回滚到之前的版本
        ```bash
            kubectl rollout undo deployment/rollingupdate-deployment
        ```
    * 查看
        ```bash
        kubectl  get deploy -o wide
        ```    