```
fn hello() {
	
}
```

###### 匿名参数与`$<N>`

```
fn doSomething( uint: []str ) {
	println($0)
}
doSomething( 1 [/ sdf sdfs sd sdf ] )
// 1
```

###### 匿名函数与`$`

````
let sum = fn ( n: uint ){
	if n != 0 {
		$(\ $(n-1) )
	}
    println(n)
}
sum(5)
````

