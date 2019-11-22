系列签名使得同一个作用域中允许存在多个同名函数，当系列签名中新增一个元素时，就称发生了一次重载。

```
{
	fn hello( ) {
		print(\ Hello )
	}
	
	fn hello( name str ) {
		print(\ Hello, $name )
	}
	
	hello()
	hello("Zkip")
}
```

#### 包重载
发生在包作用域中的重载被称为`包重载`。

```
pkg strs

fn join( str ) { ... }
fn join( str, separator str ) { ... }
```

#### 类型定义重载
发生在类型定义作用域中的重载被称为`包类型定义重载`。

```
type People {
	name str
	age uint

	( name str ) { ... }
	( name str, age uint ) { ... }
}

fn People.greet( target People ) { ... }

fn People.greet( group []People) { ... }
```