#### 循环

###### @for

```
let list = [\ kale grape broccoli ]
frag List *Tx {
    @for list as name {
		vgt name
    }
}
```

#### 分支

###### @if

```
let score = 75
frag Card *Tx {
	@if score >= 60 {
		tx 'Not Bad.'
	} else score >= 80 {
		tx 'Excellent!'
	} else {
		tx 'Bad'
	}
}
```

###### @case

```
stroke ElementState = { Burn Freeze Poison }
ElementState state = {}
frag Choice *Tx {
	@case state {
		@: Burn {
			tx "Wahaaaaa.I'm burning."
		}
		@: Freeze {
			tx "Oh. I'm so Cold."
		}
		@: Poison {
			tx "I've been poisoned."
		}
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
