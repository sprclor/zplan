```
let a = 2
$: b = a * 2
$: c = 3 / b

$: {
	if a > 3 {
		c = a * 4
	} else {
		d = b * 7
	}
}
```

### 获取依赖关系

