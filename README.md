# 多Target的开发入门

[toc]
 
当要开发大量相似app的时候，可以使用同一个项目使用多个target的方法进行开发。

## Target里包含什么？

Target里面包含了Copy Bundle Resources, Compile Sources, Link Binary With Libraries，其中：
1. Copy Bundle Resources 是指生成的 product 的. app 内将包含哪些资源文件
2. Compile Sources 是指将有哪些源代码被编译
3. Link Binary With Libraries 是指编译过程中会引用哪些库文件

## 创建Target

1. 通过复制创建：对Target点击Duplicate，会得到完全一样的target，在进行差异化修改。
2. Editor -> Add Target.

## Target更名

有三个地方需要更名：
1. target名，在target列表选中改名。
2. scheme名，在左上角run/stop右边的scheme列表菜单中选择Manage Schemes，然后修改名字。
3. plist文件修改，将xxxx copy-Info.plist修改为自己需要的名字。

## 设置区分的Type

某个Target -> Build Settings -> Preprocessor Macros

## 修改配置

1. 修改在Beta版本的target后面加上后缀`.beta`
2. 修改Bundle Display name，可在原有名字后面加上Beta
3. 更换图标。

## 判断Target

在不同的target的Build Settings里，将Preprocess Macros属性设置为BETA，然后在代码里通过预编译指令判断当前的Target。

```
#ifdef BETA
	//测试版的代码
#else 
	//默认版本的代码
#endif
```
# 相关问题

1. Target Membership指的是什么？
	> Target Membership指的是在Xcode中，一个文件属于哪一个工程，左侧选择了一个文件，右侧会显示其Target Membership。

2. 为什么Target Membership里面没有`.h`文件？
	> 1. 头文件不会被纳入最终的product里面
	> 2. Info.plist决定了应用的bundle，因此分开处理
	> 3. 只在编译过程使用到的文件，并且在运行时不使用的文件不会被加入target membership，如`.h`文件和`.pch`文件	
