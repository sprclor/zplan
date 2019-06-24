```
// Select.cpt
sturct {
	view
	picker
}
```

考虑以上结构，这是一个实现通用选择框的基本结构，对Select的阐述为：

+ 有一个预览框
+ 有一个可供选择的区域，并且一般处于隐藏状态

考虑到“可供选择的区域”是一个非常通用的描述，这意味着该区域是某种特定的类型

关于“特定的类型”，函数的参数约束是一个很好的方法，让我们可以将问题处于可控范围之内。

而在这里，picker应接受任何可以展示众多元素的结构，并且要求传入结构必须能够返回用户已选择的项目标记。

```
struct list { .. }
struct grid { .. }
struct multiColumn { .. }
```

对于以上的结构可能都是picker应该接受的类型，但是这并没有确保它们一定具有“接受用户标记并返回结果”这一行为，实现这一点，需要接口的概念

```
type Markable {
	fn mark( <T> Mark )
	...
}
```

然后创建新的结构

```
pkg markableContainer

type list like Markable {}
type grid like Markable {}
type multiColumn like Markable {}
```

使用markableContainer中的结构可以有效的对结构进行约束

接着需要进行约束声明

```
struct {
	...
	> picker ( Markable ) {
		...
	}
}
```



最后

```
use markableContainer
Select {
	@picker:list { @data }
}
Select {
	@picker:grid { @data }
}
Select {
	@picker:multiColumn { @data }
}
```

