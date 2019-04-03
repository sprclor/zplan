## Overview

![Unit Animation](../../images/Keyword-Animation.png)

## Unit Syntax

```
*( *Timing-function Duration *Delay *( Description.. ) ) Value
```

## Keywords Syntax

```
({ Unit } ..) / Unit
```

## Example

```
{ step(1s) 2s  }
```

```
.box {
    {
        top: 0px step(1s) 1s
    }
    {
        top: 100px
    }
}
```

