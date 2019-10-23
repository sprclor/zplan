
###### 重载Setter

可以指定任何该类型后缀的Setter

```
type Border - Boundry &.Def

type Border.Def {
	width	Distance
	style	&.Style
	color	Color
}

fn Border - Boundry {
	BDefType := Distance | &.Style | Color

	( all &.Def ) {
        for Boundry as k {
        	me[k] = val
        }
    }
    ( all BDefType ) {
		for all as val {
            for Boundry as k {
                me[k] = val
            }
        }
    }
	( x, y  BDefType)  {
		me.left = x
		me.right = x
		me.top = y
		me.bottom = y
    }
	( x, top, bottom BDefType )  {
		me.left = x
		me.right = x
		me.top = top
		me.bottom = bottom
    }
	( left, right, top, bottom BDefType )  {
		me.left = left
		me.right = right
		me.top = top
		me.bottom = bottom
	}
}

Border{ }
border := Border{}

border = (Border.Def{ 1px solid red })
border = ({ 1px solid red })
border = { 1px solid red }

border = ( 2px )
border = ( 2px 3px )
border = ( solid dotted )
```

