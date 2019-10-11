系列签名使得在同一个作用域中允许存在多个同名函数

```
{
	fn hello( ) {
		print("Hello")
	}
	
	fn hello( name str ) {
		print("Hello, ", name)
	}
	
	hello()
	hello("Zkip")
}
```

