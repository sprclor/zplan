选择器的目的是从不同的维度批量的描述节点

通过与结构中的目标节点集合建立起一对多的映射关系来达到这一点

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

