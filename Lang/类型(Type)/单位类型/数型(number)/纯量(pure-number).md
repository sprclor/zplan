### 直接量

###### 整数

```
xf004e			// 十六进制
-2
057523			// 八进制
b100100010010000010101010001010001000 // 二进制
23099			// 十进制
1e11			// 科学计数
1.1e1			// 科学计数

1.1e0			// Error: Illegal literals
11e0			// Error: Illegal literals
0.233e3			// Error: Illegal literals
0.233e2			// Error: Illegal literals
```

###### 小数

```
xf3e.f1		// 十六进制
x0.f1		// 十六进制
00.42		// 八进制
0.34		// 十进制
.34			// 十进制
-2			// 十进制
-.2			// 十进制
1e-23		// 十进制，科学计数
1.1e23		// 十进制，科学计数

0281.3		// Error: Illegal literals

1.1 e23		// Error: Illegal literals
1.1e 23		// Error: Illegal literals
1.1 e 23	// Error: Illegal literals
```

#### 构造类型

```
int(23)
uint(30)	// 30
float(30)	// 30.0

uint(-3)	// 3
```

