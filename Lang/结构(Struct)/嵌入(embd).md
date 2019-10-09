结构可以作为其它结构的一部分

```
struct animals {
	mammal {
		pet {
			cat
			dog
		}
	}
}

struct hobby {
	> animals/mammal/pet
}
/-
	hobby {
		pet {
			cat
			dog
		}
	}
/

struct hobby {
	> lovely: animals/mammal/pet
}
/-
	hobby {
		lovely {
			cat
			dog
		}
	}
/

struct hobby {
	> 
}
```

