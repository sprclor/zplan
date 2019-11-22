纯组合是将一系列纯函数合并成一个函数的一种方式。

```
pure translate() { ... }
pure scale() { ... }
pure rotate() { ... }

pure opr1 translate | scale | rotate
pure opr2 scale | translate | rotate
```