选择器映射出集合中符合特征的集合

```
type Article {
	struct {
		content {
			p `...`
			p `...`
			p `...`
		}
	}

	$( content > p ) {
		margin = 2rem
	}
}
```

