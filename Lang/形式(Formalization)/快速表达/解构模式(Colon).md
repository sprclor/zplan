解构模式下，可以



```
let a = {
	b: "apple"
	c: 2
	d: false
}

let { b c d } = a
b // "apple"
c // 2
d // false

let [ one two three ] = [ 1 2 3 ]

let [ first .. end ] = [ 0 1 2 3 4 5 6 7 8 9 ]
first	// 0
end		// 9

let x,y
let point = {
	x = 3
	y = 4
}

{ x y } = point 
{ x y z } := point
x	// 3
y	// 4
z	// any


```

```
let a = {
	{ a b } = c
}
```

