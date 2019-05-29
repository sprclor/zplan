## R

Structed Resource Describe. 

```
index {
    banner banner.jpg
    carousels [
        fruits.jpg
        helloworld.png
        sjd3.jpg
    ]
}

cats [
    a.png
    b.png
    c.png
]

place beijing.jpg
```

```
// index.cpt

struct {
    banner {
        Img(%index.banner)
    }
    cats {
        Carousel() {
            @for cat,idx := range %cats {
                Img(cat)
            } 
        }
    }
}

```