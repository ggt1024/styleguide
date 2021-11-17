# 伽马代码规范

## 介绍

本组织内所有项目遵循的代码规范。

此项目目录结构说明

    dot-prettierrc     prettier 配置；使用时，点(.) 开头的配置文件改为 `dot-`，如 `.prettierrc` => `dot-prettierrc`
    pyguide.md         Python 代码编码规范
    htmlcssguide.md    HTML/CSS 代码编码规范
    xsguide.md         JavaScript 和 TypeScript 代码编码规范
    goguide.md         Go 代码编码规范


整体规范由以下三部分组成。
 - 文件编码规范
 - 代码编码规范
 - 版本控制提交规范


**文件编码规范**
- 除了依赖 Windows CRLF 换行符特殊 CMD 脚本外，所有文件以 utf8 编码，Unix LF 为换行符
- 文件末尾不留冗余空行


**代码编码规范**
见根目录下 `*guide.md` 后缀名文件内容。


**版本控制提交规范**

- 每此提交一个尽可能小变更的 commit，如实现一个功能/修复一个bug/格式化若干个相关文档等等；避免一次性提交大量变更对代码评审、差异比较不友好
- commit 如果跟某个 issue 相关，应该包含指向
  - 如同仓库内指向 `fix ES6 does not works on IE11 #12`
  - 如夸项目或仓库指向 `fix bug xxx myorg/myrepo#3`
- 中英文注释(comment)均可，建议英文，保证任何系统下不会乱码


## 安装教程

    git clone git@github.com:ggt1024/styleguide.git 


## 使用说明

示例：Visual Studio Code 项目使用 .prettierrc

    cd styleguide
    ln -s `pwd`/dot-prettierrc .prettierrc


示例：Visual Studio Code 项目使用 clang-format 格式化 gRPC 协议文件，以 win10 系统为例
1. https://llvm.org/builds/ 下载 LLVM-x.y.z-xxx.win64.exe 安装包安装 clang-format 到 `c:\pkgs\llvm\` ；
2. 参考VSC 根目录 `example.vsc.win10.settings.json` 例子， VSC 配置中新增 `"clang-format.executable": "C:/pkgs/LLVM/bin/clang-format.exe"` 。


## 参与贡献

1.  Fork 本仓库
2.  新建 xxx 分支
3.  提交代码
4.  新建 Pull Request
