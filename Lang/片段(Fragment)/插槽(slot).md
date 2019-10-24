```
struct T {
	< name {
		spare {
		}
	}
	< name: V {
		spare { }
	}
}
```

#### 形式插槽和类型限制

```
let currentValue
let list = []
frag Select *Tx {
	view:Tx currentValue.toString()
	picker {
		< sct:ViewSct {
			@for list as item {
				: item.toString()
			}
		}
	}
}

type UserViewSct like ViewSct {
	User[] users = []
	
	frag {
		@for users as user  {
			user
		}
	}
}

UserViewSct uvs = { }
Select select = {
	sct:uvs
}

```



#### 备用内容

