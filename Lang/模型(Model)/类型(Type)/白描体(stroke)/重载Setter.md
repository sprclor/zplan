
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
    ( width Distance, style &.Style, color Color ) {
    	$( me.*.width ) = width
    	$( me.*.style ) = style
    	$( me.*.color ) = color
    }
	( x, y BDefType)  {
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

// Defintion Pattern
Border{ { 1px solid red } { 1px solid red } { 1px solid red } { 1px solid red } }

// Defintion-Keyed Pattern
Border{ { 1px solid red } top: { 3px dotted red } }

// Constructor Pattern
Border( Border.Def{ 1px solid red } )
Border({ 1px solid red })
Border( 2px )
Border( 2px 4px )
Border( 2px 4px 6px )
Border( 2px 4px 6px 9px )
Border( solid )
Border( solid dotted )
Border( solid dotted dotted )
Border( solid dotted dotted solid )
Border( red )
Border( red blue )
Border( purple gray blue )
Border( red #f56 blue purple )

border := Border{}
// Constructor, Anonymous Literal
border = ( Border.Def{ 1px solid red } )
border = ({ 1px solid red })
border = ( 1px solid red )
border = ( 2px )
border = ( 2px 3px )
border = ( solid dotted )
```

