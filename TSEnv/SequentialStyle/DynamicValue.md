```
Card {
    item {
    	{
            progress = ( $.idx+1 ) / $.len
    	}
    	color: .4s progress*1s randomColor
    	margin.bottom:
    		fastOut-linearIn .3s progress * .5s 1.2rem
    }
}
```

