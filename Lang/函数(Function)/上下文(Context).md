```
fn hello() {
	print(\ Hi! )
}
```

```
type People {
	name str
}

fn People.hello() {
	print(\ Hi\, I'm ${&.name}!)
}
```

