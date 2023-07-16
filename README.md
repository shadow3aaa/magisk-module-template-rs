# magisk-module-template-rs

## 介绍
一个主程序为rust程序的magisk模块的模板仓库

## 使用
* 1.通过模板创建仓库[github文档](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template)
* 2.clone创建的仓库
* 3.初始化项目名(只能这么做一次)
```
bash ./init_name.sh --name xxx
```

### 特性
* make.sh一键完成编译和模块打包
* ci-build action自动编译并且打包到github
