# Go 代码编码规范

以 [Uber Go Style Guide](https://github.com/uber-go/guide) 为主，补充以下。 如果 uber 和补充冲突，遵循补充的约定。


## 补充


## import 分组

内置库一组，第三方库一组，包内自有业务逻辑一组。

示例
```
import (
	"context"
	"encoding/json"
	// ...

	"github.com/giant-stone/go/logger"
	// ...  

	"github.com/foo/bar/mypkg"
	//...
)
```

好处：逻辑更清晰；diff 时尽可能因为一行变更导致多行差异。

## struct 字段申明/赋值排序并分组

示例
```
Ms{
	Actors: "Ben Burtt",
	Boxoffice:    521311890,
	Boxofficecur: "$",
	Directors: "Andrew Stanton",
	Episode: 0,

	Genres: "Animation",
	Im:       "tt0910970",
	Ratesim:  1075300,
	Ratingim: 8.4,
	Released: 1214524800,

	Season:  0,
	Titleen: "WALL·E",
	Year:    2008,
	// ...
},

	// ...
```

好处：便于人读，避免错漏。
避免错漏
