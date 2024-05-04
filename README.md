<p align="center"><a href="https://oddfar.com/" target="_blank" rel="noopener noreferrer"><img width="180" src="https://note.oddfar.com/img/web.png" alt="logo"></a></p>

<p align="center">
  <a href="https://github.com/oddfar/campus-imaotai/stargazers"><img src="https://img.shields.io/github/stars/oddfar/campus-imaotai.svg"></a>
	<a href="https://github.com/oddfar/campus-imaotai/blob/master/LICENSE"><img src="https://img.shields.io/github/license/oddfar/campus-imaotai.svg"></a>
</p>

<p align="center"> i茅台app自动预约，每日自动预约，支持docker一键部署</p>

<h2 align="center">Campus-imaotai</h2>

## 项目介绍

i茅台app，每日自动预约茅台

- [x] 平台注册账号
- [x] 添加多个用户
- [x] 自动预约
- [x] 类型选择（本市出货量最大的门店，或位置附近门店）
- [x] 自动旅行
- [x] 首次旅行分享
- [x] 获取申购耐力值
- [x] 自定义时间/随机时间预约或旅行
- [x] 申购结果消息推送

## 环境

- [x] jdk8
- [x] mysql【SQL 脚本：doc/sql/campus_imaotai-1.0.5.sql】
- [x] redis
- [x] nginx【nginx.conf 配置:doc/docker/nginx/conf/nginx.conf】
- [x] npm（用于本地运行前端工程）
```bash
# 检查npm版本
npm -v
node -v
```

## 本地启动

```bash
# 前端ui
1、本地执行 vue_campus_admin/bin/package.bat（安装Web工程，生成node_modules文件）
2、本地执行 vue_campus_admin/bin/run-web.bat（使用 Vue CLI 命令运行 Web 工程）

# 后端项目
1、调整配置文件
    campus-modular\src\main\resources\application.yml
    campus-modular\src\main\resources\application-dev.yml
2、启动
    启动类：campus-modular\src\main\java\com\oddfar\campus\CampusApplication.java
```
## 服务器启动

```bash
# 前端ui
1、本地执行 vue_campus_admin/bin/build.bat（打包Web工程，生成dist文件）
    如果报错：Error: error:0308010C:digital envelope routines::unsupported 的话，是由于 Node.js 版本高了（17+），需要告诉 Node.js 使用旧版的 OpenSSL 提供者，本地执行 vue_campus_admin/bin/build_0308010C.bat
2、将本地 dist 放到服务器上
3、配置 nginx 启动

# 后端项目
1、调整配置文件
    campus-modular\src\main\resources\application.yml
    campus-modular\src\main\resources\application-prod.yml
2、打包
    mvn clean install
3、将部署包 campus-modular/target/campus-modular.jar 放到服务器上
4、启动
    nohup java -jar -Dspring.profiles.active=prod campus-modular.jar &
```

## 日志

- [x] 日志路径：${logging.file.path:-./logs}


## 演示图

| i茅台预约                                                    |                                                              |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| ![image-20230707144241399](https://gcore.jsdelivr.net/gh/oddfar/campus-imaotai/.github/image-20230707144241399.png) | ![image-20230707144404638](https://gcore.jsdelivr.net/gh/oddfar/campus-imaotai/.github/image-20230707144404638.png) |
|                                                              |                                                              |
| ![image-20230707144703842](https://gcore.jsdelivr.net/gh/oddfar/campus-imaotai/.github/image-20230707144703842.png) | ![image-20230707145525709](https://gcore.jsdelivr.net/gh/oddfar/campus-imaotai/.github/image-20230707145525709.png) |



## 贡献代码

若您有好的想法，发现一些 **BUG** 并修复了，欢迎提交 **Pull Request** 参与开源贡献

发起 pull request 请求，提交到 master 分支，等待作者合并

**感谢为这个项目贡献代码的朋友**

<a href="https://github.com/oddfar/campus-imaotai/graphs/contributors">
<img src="https://contrib.rocks/image?repo=oddfar/campus-imaotai" />
</a>

## star 趋势图

![Stargazers over time](https://starchart.cc/oddfar/campus-imaotai.svg)

## 友情链接

- 本项目其他版

  C#：<https://github.com/lisongkun/hygge-imaotai>

- 葫芦娃项目

  yize8888-maotai：https://github.com/yize8888/maotai

## 声明

- 本项目涉及的数据由使用的个人或组织自行填写，本项目不对数据内容负责，包括但不限于数据的真实性、准确性、合法性。使用本项目所造成的一切后果，与本项目的所有贡献者无关，由使用的个人或组织完全承担。
- 本项目中涉及的第三方硬件、软件等，与本项目没有任何直接或间接的关系。本项目仅对部署和使用过程进行客观描述，不代表支持使用任何第三方硬件、软件。使用任何第三方硬件、软件，所造成的一切后果由使用的个人或组织承担，与本项目无关。
- 本项目中所有内容只供学习和研究使用，不得将本项目中任何内容用于违反国家/地区/组织等的法律法规或相关规定的其他用途。
- 所有基于本项目源代码，进行的任何修改，为其他个人或组织的自发行为，与本项目没有任何直接或间接的关系，所造成的一切后果亦与本项目无关。
- 所有直接或间接使用本项目的个人和组织，应24小时内完成学习和研究，并及时删除本项目中的所有内容。如对本项目的功能有需求，应自行开发相关功能。
- 本项目保留随时对免责声明进行补充或更改的权利，直接或间接使用本项目内容的个人或组织，视为接受本项目的特别声明。

## 鸣谢

> [IntelliJ IDEA](https://zh.wikipedia.org/zh-hans/IntelliJ_IDEA) 是一个在各个方面都最大程度地提高开发人员的生产力的 IDE，适用于 JVM 平台语言。

特别感谢 [JetBrains](https://www.jetbrains.com/?from=campus) 为开源项目提供免费的 [IntelliJ IDEA](https://www.jetbrains.com/idea/?from=campus) 等 IDE 的授权    
[<img src="https://gcore.jsdelivr.net/gh/oddfar/campus-imaotai/.github/jetbrains-variant.png" width="200"/>](https://www.jetbrains.com/?from=campus)



