纯函数无法从任何外部作用域中获得获取变量。

```
pure double = n => n * 2
```

```
let double = pure n => n * 2
```



```
User jackie = {}
pure kick( target User ) number {
	if( isSameTeam( target, jackie ) ) { // Error: Cannot 
		return target
	} else {
		return decrementHealth( jackie, target )
	}
}
pure decrementHealth( u,target User ) {
	target.hp -= u.ap
}
pure isSameTeam = ( ( player target User ) ) => player.team == target.team
```

