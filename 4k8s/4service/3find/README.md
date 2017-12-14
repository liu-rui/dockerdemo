#### 测试不同namespace下的pod是否互通,结论：是互通的

1. 切换到default命名空间，上传nginx-default-pod.yml
2. 切换到test命名空间，上传nginx-test-pod.yml
3. 进入nginx-default

```bash
kubectl exec nginx-default -it -- sh
nslookup nginx-test
ping nginx-test
```
3. 进入nginx-test

```bash
kubectl exec nginx-test --namespace test -it -- sh
nslookup nginx-default
ping nginx-default
