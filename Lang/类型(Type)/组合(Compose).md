组合是一种对作用域的操作，它使目标作用域成为作用者的子作用域。

```
type A { 
    a str
}
type B like A {
    b uint
}

type {
    yum {}
}

B x = ()
x.a
x.b
```