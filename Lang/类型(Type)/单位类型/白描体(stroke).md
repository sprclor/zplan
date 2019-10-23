白描体有多种表现形式



HashMap和UniqueSequence

```
table := stroke {
	Jerry
	Tom
	ZkipLan
}
table.add(\ Juip)
table.rm(\ aliz)
table[\ Juip]		// true
```



限定和被动限定



类型分配

不可变白描体可作为其它类型的后缀连接

```
stroke! Boundry { left right top bottom }
type Margin - Boundry Distance
type Border - Boundry {
	width	Distance
	style	&.Style
	color	Color
}

type SizingBox {
	padding - Boundry Distance
	margin
	bound	- Rectangle Distance
}

stroke AxisX { left right center }
stroke AxisY { top bottom center }
stroke OctaveDirection - AxisX * AxisY
type Fillet - AxisX * AxisY Distance
```

###### 作为值簇

```
$( body.border ) = {
	width 2px
	style dashed
}
```

###### 作为枚举

```
stroke! Border.Style {
	solid
    dashed
}
stroke! Border.Style { solid dashed }
```

###### 组合

只有不可变白描体可以进行组合

```
stroke! Boundry { left right top bottom }
stroke! Rectangle like Boundry { width height }
```

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

