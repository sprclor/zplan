```
// ./main.z
use time

type View {
    struct {
		< view: View . {  }		// "."指定从实参出获取标签
		< indicator click {}	// 接受指定绑定的事件
		< nav @ {}
    }
}

fn stockUp() { ... }

user {
	view click: stockUp
}
```

```
use ./main.z
use Dom
use SelectableView

struct {
    view: View {
        > view: ViewSlc .slc { }
        > indicator: Ele .focus { }
        > nav: Ele {}
    }
}

attr.style {
	.slc {
		background-color: red
	}
	.focus {
		background-color: red
	}
	indicator {
		background-color: yellow
	}
}

user {
	view > view click( ) { }
	view > indicator click( ) { }
}
```

indicator由于不能接受实参的标签，所以使用`.focus`无法命中，可以使用`:indicator`选择器

view不能接受事件绑定，indicator则可以