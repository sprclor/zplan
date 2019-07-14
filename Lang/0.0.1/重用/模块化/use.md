导入外部模块

```
str
  -- concat.z
  -- join.z
  -- split.z
tool
  -- main.z
```

```
// str/concat.z
( []str ) {

}
```

```
// tool/main.z
use ../str

concat("A","B")
```

