```
type Video {
    url str
    volume ufloat[ 0 ~ 1 ]
    mode enum{ mini; theater; full }

    struct {
        container:Canvas
        indicator {
            primary .left
            next .left
            volume:Volume .left $volume
            time_display .left
            play_mode .right {
                mini
                theater
                full
            }
            subtitle .right
            setting .right
        }
    }
}
```