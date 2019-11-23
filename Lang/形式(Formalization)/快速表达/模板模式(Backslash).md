模板模式用于快速的表达字符串

模板模式对`,`、`<SPACE>`和`$`敏感，因为在模板模式下，正是使用前两者来进行分隔，`$`临时切换为正常模式

```
let Jak = "Holp"
[\ Jackie Tom &Jak ] // ["Jackie", "Tom", "Holp"]
[ "Jackie" [\ Tom Holp Jhon ] ] // [ "Jackie", [ "Tom", "Holp", "Jhon" ] ]
[\ Jackie Tom, Holp, Jhon] // [ "Jackie", [ "Tom", "Holp", "Jhon" ] ]
// ','和<SPACE>交替表达
[\ Jackie Tom, [\ Holp NBS JKC, Jor ], Jhon] // [ "Jackie", [ "Tom", [ "Holp", "NBS", [ "JKC", "Jor" ]], "Jhon" ]]

[\ `l    -   ng` Jack\nsf To\052 To\0x34f a\ b \u073f ]

fn hello( []str ) { ... }
hello(\ Jackie Tom )
```

###### 不允许自引用

```
let names = [\ Jackie &names Tom ] // Error
```

