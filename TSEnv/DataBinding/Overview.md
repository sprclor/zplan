```
type Card {
	id CardID
	imgs []Image
	category Icon
	desc []Tag
	brand Brand
	badges []Badge
	price uint
	originPrice uint
	currency Currency
	rank uint[0 5]
	options []Option
	stock uint
}
type Shop {
    id ShopID
    qlcs []Qualification
    presistenceTime Time
    state
}
```

```
using rt runtime

- m = ident[ main, secondary, tx... ]
user = rt.getCurrentUser()

Struct Card [ c:& ] ( ) {
    front {
        background:Carousel[ imgs:me ]
        nav {
        	category:Icon( me.category )
            quickOpr {
                @for opr in user.getQuickOperation {
                    ImgTx( icon:opr.icon tx:opr.tx )
                }
            }
            venter {
                desc {
                    @for ctn,count in me.desc {
                    	m[count] { #ctn }
                    }
                }
                badge {
                    @for badge in me.badges {
                        Icon(badge.ID)
                    }
                }
            }
            footer {
                price { #:me }
                originPrice { #:me }
                Card.Rank( me.rank )
            }
        }
    }
    back {
    	@{ isBrand = !isEmpty( me.brand ) }
    	header {
            back:Icon( 'back' )
            optionSct {
                tx #i18n[.shop]
                @if isBrand {
                    tx #i18n[.brand]
                }
            }
            quickOpr {
                @for opr in user.getQuickOperation {
                    ImgTx( opr.img opr.tx )
                }
            }
    	}
        shop:Option {
        	background {
                ScoreBoard
                ScoreDesc
                Statistics
                Evaluate
                time {
                    presistence { #shop.presistenceTime }
                    status {
                        Icon[ shop.status ]
                        tx { #i18n[ shop.status ] }
                    }
                }
                @for q in shop.qlcs {
                    Icon[ q.icon ]
                }
        	}
        	foreground {
        		@for talk in shop.talks {
                    TalkItem[ talk ]
        		}
        	}
        }
    	@if isBrand {
            brand:Option {
				
            }
    	}
    }
}
```

