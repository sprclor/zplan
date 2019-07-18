### 直接量

```
"Jackie"
'Jackie'
`Jackie`
```

#### 转义

###### ASCII

```
\000 ~ \x777
\x00 ~ \xff
```

###### Unicode

```
\u0000 ~ \uffff
```

###### 功能性

```
\t tab
\n 换行
\r
```

### 构造类型

使用模板模式

```
let b = false
str(6)			// 分配6个字符空间，由于Unicode字符集的可变长特性，具体内存空间由具体的字符串确定
str(false)		// "false"
str(b)			// "b"
str($b)			// "false"
str(:b)			// Error: Unsupport Deconstruct mode
str(str)		// "str"
str{$str}		// Error: Illegal use of built-in varialbles

str{6}			// "6"
str{false}		// "false"
str{b}			// "b"
str{$b}			// "b"
str{str}		// "str"
str{$str}		// Error: Illegal use of built-in varialbles
str{:b}			// Error: Unsupport Deconstruct mode
```

