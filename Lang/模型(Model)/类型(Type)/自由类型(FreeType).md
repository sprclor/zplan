自由类型是一种独立的特殊类型，它的表现性质

```
let x

case rand() as r {
    r > 0 {
        x = Stone{}
    }
    r > 0.7 {
        x = Metal{}
    }
    r > 0.9 {
        x = Gold{}
    }
    : {
        x = Inorganics{}
    }
}
```
上例中定义了一个自由类型，它是一种元描述可以被改变的实体，用它来表示任意类型。
由于它的元描述是动态的，所以一般配合类型转换来使用。
```
case x.type {
    Stone {
        stone := x.(Stone)
    }
    Metal {
        metal := x.(Metal)
    }
    Gold {
        gold := x.(Gold)
    }
    Inorganics {
        inoc := x.(Inorgranics)
    }
}
```

考虑以下示例
```
if x.type == Stone {
    gold := x.(Gold)
}
```
未避免在运行时才发现此问题，需要保证类型转换必须成功，为此所有类型转换必须在假设的条件下进行。

这要求编译器必须知道试图转换的实体的最近假设域，还必须进一步对假设的内容作出限制，即假设必须明确猜想的目标类型，最后根据猜想目标类型与试图转换的类型是否在同一个关系链中就可以确定一定会转换成功。

为了确保安全的转换，禁止在作用域链中没有任何一个与转换目标假设域契合进行转换。
```
x.(Gold)    Error:
```
即便有时看起来非常不合理
```
if true {
    x = Gold{}
}
x.(Gold)    Error: 
```

> 提示：转换距离允许是大于0而不只是0
```
if x.type == Metal {
    gold := x.(Gold)
}
```

#### 自由类型
```
let x

case rand() as r {
    r > 0 {
        x = Stone{}
    }
    r > 0.7 {
        x = Metal{}
    }
    r > 0.9 {
        x = Gold{}
    }
    : {
        x = Inorganics{}
    }
}
```
上例中定义了一个自由类型，它是一种元描述可以被改变的实体，用它来表示任意类型。
由于它的元描述是动态的，所以一般配合类型转换来使用。
```
case x.type {
    Stone {
        stone := x.(Stone)
    }
    Metal {
        metal := x.(Metal)
    }
    Gold {
        gold := x.(Gold)
    }
    Inorganics {
        inoc := x.(Inorgranics)
    }
}
```

考虑以下示例
```
if x.type == Stone {
    gold := x.(Gold)
}
```
未避免在运行时才发现此问题，需要保证类型转换必须成功，为此所有类型转换必须在假设的条件下进行。

这要求编译器必须知道试图转换的实体的最近假设域，还必须进一步对假设的内容作出限制，即假设必须明确猜想的目标类型，最后根据猜想目标类型与试图转换的类型是否在同一个关系链中就可以确定一定会转换成功。

为了确保安全的转换，禁止在作用域链中没有任何一个与转换目标假设域契合进行转换。
```
x.(Gold)    Error:
```
即便有时看起来非常不合理
```
if true {
    x = Gold{}
}
x.(Gold)    Error: 
```

> 提示：转换距离允许是大于0而不只是0
```
if x.type == Metal {
    gold := x.(Gold)
}
```