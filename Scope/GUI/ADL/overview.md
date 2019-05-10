## 属性定义语言
`ADL`( Attributes Defintion Language )用来保持命中目标的属性


    ”保持“的含义就是指实时地使命中目标保持当前属性

#### `ADL`真包含`CSS`
CSS用来保持命中目标的样式（视觉和交互属性），而ADL可以描述所有属性
样式是属性的特例，就像正方形（CSS）和矩形（ADL）的关系一样

#### ADLOM (ADL Object Model)
就像CSSOM，ADLOM提供编程性接口


```
// Carousel.cpt

type {
    dir             row / col
    mode            single / dense
    autoSize        both / cross / main / none
    align axis      FlexAlign
}

- type axis { main cross }

struct {
    :wrap virtual {
        >* () // unnamed slot
    }
    :indicator {

    }
}

style {
    &:wrap {
        layout flex
        flex dir: $dir align: $align

        @case autoSize dir {
            both:
                flex align: $align
            main row:
                flex align.main: stretch
                
            cross:

            none:
        }

        &>* {
            
        }
    }
    &>* {
        
    }
}

```