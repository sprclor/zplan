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

###### 