```
Card {
    item {
    	@ progress := ( $.index + 1 ) / $.lens
    	color: .4s progress * 1s step( randomColor[ a := 1 ] 0.5s )
    	margin.bottom:
    		fastOut-linearIn .3s progress * .5s 1.2rem
    }
}
```

