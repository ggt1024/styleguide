# Go 代码编码规范

以 [Uber Go Style Guide](https://github.com/uber-go/guide) 为主，补充以下。 如果 uber 和补充冲突，遵循补充的约定。


## 补充


## import 分组

内置库一组，第三方库一组，包内自有业务逻辑一组。

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
