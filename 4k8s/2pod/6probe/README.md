容器的健康检查分为2中：liveness probe 和 readiness probe;

* liveness probe
> 用户容器的自定义健康检查；如果liveness probe检查失败，kubernetes会杀死容器，然后根据pod的重启策略来决定是否重启容器
* readiness probe
> 用户容器的自定义准备状况检查；如果readiness probe检查失败，kubernetes会把pod从服务代理的分发后端移除，即不会分发请求到该pod