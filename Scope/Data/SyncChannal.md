## 同步信道

同步信道用来表达TSEnv与服务器之间同步数据的过程。

`SyncChannal`在TSEnv与SSEnv可以同时存在多个`SyncChannal`，它们可以分别承担不同的任务。

###### Private SyncChannal

专用于同步基于用户的数据

###### Public SyncChannal

同步公共数据

###### Outer SyncChannal

专用于与其它`Scope`的数据同步，比如第三方认证登录

######  候选性质

+ 重/轻
+ 持久/短暂

