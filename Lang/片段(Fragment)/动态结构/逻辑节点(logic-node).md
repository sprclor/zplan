#### 循环

###### @for

```
@for EXPR as []EXPR {

}
```

#### 分支

###### @if

```
@if CONDITION {

} else CONDITION {

} else {

}
```

###### @case

```
@case EXPRESSION as a {
	@: EXPRESSION {
	
	}
}
```

#### 变量

```
@ uint a, b, c; bool ok
@ let a = 2
@ {
	let a = 2
}
```

