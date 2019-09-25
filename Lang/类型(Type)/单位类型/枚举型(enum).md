```
enum Vegetable {
	Banana
	Cabbage
	Corn
	Broccoli
}

Vegetable := Banana | Cabbage | Corn | Broccoli

fn pick( vgt Vegetable ) {
	case vgt, in Vegetable {
		Banana { }
		Cabbage { }
		Corn | Broccoli { }
	}
}

pick([: Banana Cabbage ])
```



## 拓展

```
enum AxisAlign { Start ; End ; Center }
enum FlexAlign like AxisAlign { Between ; Around ; Evenly }
```

