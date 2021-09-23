# Python 代码编码规范

总原则 [Pythonic](https://docs.python-guide.org/writing/style/) 、 [KISS](https://en.wikipedia.org/wiki/KISS_principle) 和 [Python 编程艺术 - 
wilhelmshen 沈巍](https://www.slideshare.net/wilhelmshen/py-art)。

以 [Google Python Style Guide](https://github.com/google/styleguide/blob/gh-pages/pyguide.md) 为主，补充以下。
如果 Google 和补充冲突，遵循补充的约定。

## 1. 不考虑 Python2，只兼容 Python3.5以上版本；

## 2. 文件只使用 Unix 换行符，utf8编码，第一行不写 encoding，列宽 150，不超过 1000 行；

Git 全局设置 username、email； 禁用自动替换行尾，统一使用 Unix 换行符

    git config --global user.name "San Zhang"
    git config --global user.email zhagnsan@foo.com
    git config --global core.autocrlf false

PyCharm IDE 设置

    commons lineEnding=unix  encoding=utf8
    JSON/CSS/HTML indent=2spaces


## 3. 不要提交 print 代码注释行 之类 debug 类语句到版本库；

## 4. 缩进为4空格；

## 5. 用 `import a.b.c` 代替 ` from a.b import c`

好处：a.b.c.d(xx) 一眼看出函数来自哪里，做什么；如果引入太长，强迫程序员改短——在表意前提下，更短，符合总原则。


## 6. 换行和空白行

### 6.1 函数多个参数时，每个参数独立一行
    
NO

    def myfoo(a, b, 
        c, ...): pass
    
YES

    def myfoo(
        a, 
        b, 
        c, 
        ...
    ): pass
    
    
NO

    myfoo(a="aaa", b="bbb", 
        c="ccc", ...)
        
        
YES

    myfoo(
        a="aaa", 
        b="bbb", 
        c="ccc", 
        ...
    )
    
        
好处：对 diff 友好，减少噪音；观感更清晰。
    

### 6.2 多个逻辑块之间加空白行

常量例子

NO

    class ErrCode:
        ERROR = -1
        SUCCESS = 0
        INVALID_USERID_LIST = 40031
        INVALID_PARTY_LIST = 40066
        API_FORBIDDEN = 48002
        DEPARTMENT_NOT_FOUND = 60003
        NO_PRIVILEGE_TO_ACCESS_OR_MODIFY = 60011
        USERID_EXISTED = 60102
        USERID_NOT_FOUND = 60111
        INVALID_NAME = 60112
        CHATID_INVALID = 86001
        CHATID_EXISTED = 86215

YES

    class ErrCode:
    
        ERROR = -1
        SUCCESS = 0
        
        INVALID_USERID_LIST = 40031
        INVALID_PARTY_LIST = 40066
        API_FORBIDDEN = 48002
        
        DEPARTMENT_NOT_FOUND = 60003
        NO_PRIVILEGE_TO_ACCESS_OR_MODIFY = 60011        
        USERID_EXISTED = 60102
        USERID_NOT_FOUND = 60111
        INVALID_NAME = 60112
        
        CHATID_INVALID = 86001
        CHATID_EXISTED = 86215
    
    
以上 除了按 值前缀 4xx 6xx 8xx 分组外，还可以每行一组分组。


      
语句例子

NO

    def __init__(self, ...):
        self._corpid = corpid
        self._corpsecret = corpsecret
        self._url_prefix = "https://example.com/cgi-bin"
        self._http_timeout = http_timeout
        self._verbose = verbose
        self._access_token_expires_in = 0
        self._access_token = None
        
YES

    def __init__(self, ...):
        self._corpid = corpid
        self._corpsecret = corpsecret

        self._url_prefix = "https://example.com/cgi-bin"
        self._http_timeout = http_timeout
        self._verbose = verbose

        self._access_token_expires_in = 0
        self._access_token = None
      
      
好处：观感更清晰。


### 6.3 简化字典声明


如果key值范围 `[a-zA-Z]+[a-zA-Z0-9]*`，则使用以下方式简化

NO

    mydict = {"name":"foo", "no":1234, ....}
    
YES

    mydict = dict(
        name="foo",
        no=1234,
        ....
    )

多对key-value则多行，少量则一行。
    
    
    
好处：不用写一堆匹配的双引号。




## Django

### 1. settings 约定

可复用 app 的 settings，使用 app 的名字作为前缀，比如 官方文档中 polls app，设置为

    POLLS_APPID
    
部分 app 名字可能冲突，应加上 project 前缀，比如

    COMPANYNAME_OAUTH_BACKEND_APPID
    
代替 

     OAUTH_BACKEND_APPID
    
    
### 2. model 表命名

`app前缀_app功能命名`，前缀用于保证同一个 django project 内， 各个 app 的 model 表不重名。

