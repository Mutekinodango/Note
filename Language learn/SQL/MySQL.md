# 数据库入门（MySQL）

## SQL ***Structured Query Language***

![聆听](https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Speakerlink-new.svg/11px-Speakerlink-new.svg.png)](https://upload.wikimedia.org/wikipedia/commons/5/5f/En-us-SQL.ogg)**[i](https://zh.m.wikipedia.org/wiki/File:En-us-SQL.ogg)**[/ˈɛs kjuː ˈɛl/](https://zh.m.wikipedia.org/wiki/Help:英語國際音標)[[4\]](https://zh.m.wikipedia.org/zh-hans/SQL#cite_note-learningSQL-4)或[![聆听](https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Speakerlink-new.svg/11px-Speakerlink-new.svg.png)](https://upload.wikimedia.org/wikipedia/commons/7/7a/En-us-sequel.ogg)**[i](https://zh.m.wikipedia.org/wiki/File:En-us-sequel.ogg)**[/ˈsiːkwəl/](https://zh.m.wikipedia.org/zh-hans/Help:英語國際音標)[[5\]](https://zh.m.wikipedia.org/zh-hans/SQL#cite_note-5)，**Structured Query Language**，**结构化查询语言**[[6\]](https://zh.m.wikipedia.org/zh-hans/SQL#cite_note-6)[[7\]](https://zh.m.wikipedia.org/zh-hans/SQL#cite_note-7)[[8\]](https://zh.m.wikipedia.org/zh-hans/SQL#cite_note-8)[[9\]](https://zh.m.wikipedia.org/zh-hans/SQL#cite_note-9)）是一种[特定目的程式语言](https://zh.m.wikipedia.org/wiki/特定目的程式语言)，用于管理[关系数据库管理系统](https://zh.m.wikipedia.org/wiki/关系数据库管理系统)（RDBMS），或在[关系流数据管理系统](https://zh.m.wikipedia.org/zh-hans/关系流数据管理系统)（RDSMS)中进行流处理。

> https://zh.m.wikipedia.org/zh-hans/SQL  

### SQL语句不区分大小写

> SQL关键字本身不区分大小写。 表、列等的名称区分大小写，这与数据库相关-除非您知道其他情况，
>
> SQL 语句的大小写规则与语句组成元素、引用内容和服务器所使用的操作系统有关。
>
> SQL关键字尽量使用大写，自命名用小写以作区分。
>
> 自用名用``(反引号)包起来，以作区分；
>
> 



### 命令行启动mysql服务

``` shell
#通过命令行方式
#可以通过 DOS 命令启动 MySQL 服务，点击“开始”菜单，在搜索框中输入“cmd”，以管理员身份运行，按回车键，弹出命令提示符界面。然后输入net start mysql，按回车键，就能启动 MySQL 服务，停止 MySQL 服务的命令为net stop mysql，如图所示。

#os命令启动MySQL服务

#注意：net start mysql57和net stop mysql57命令中的 mysql57 是 MySQL 服务器名称，如果你的 MySQL 服务名称是 DB 或其它的名字，应该输入net start DB或其它名称，否则提示服务名无效。
net start mysql80
```







``` mysql
#创建数据库
CREATE DATABASE `DATABASE`;
#显示数据库
SHOW DATABASE;
#删除数据库
DROP DATABASE `DATABASE`;
```



## 数据库（DB）

- 关系数据库

  *（英语：Relational database），是创建在关系模型基础上的数据库，借助于集合代数等数学概念和方法来处理数据库中的数据。现实世界中的各种实体以及实体之间的各种联系均用关系模型来表示。关系模型是由埃德加·科德于1970年首先提出的，并配合“科德十二定律”。现如今虽然对此模型有一些批评意见，但它还是数据存储的传统标准。标准数据查询语言SQL就是一种基于关系数据库的语言，这种语言执行对关系数据库中数据的检索和操作。*

  - MySQL
  - Oracle
  - postgreSQL 
  - SQL server

- 非关系型数据库（NRDBMS）

  （英语：non-relational database）

  *NoSQL一词最早出现于1998年，是Carlo Strozzi开发的一个轻量、开源、不提供SQL功能的关系数据库。当代典型的关系数据库在一些数据敏感的应用中表现了糟糕的性能，例如为巨量文档创建索引、高流量网站的网页服务，以及发送流式媒体。关系型数据库的典型实现主要被调整用于执行规模小而读写频繁，或者大批量极少写访问的事务。*

  - mogodb
  - redis
  - dynamodb

- RDBMS(即-关系数据库管理系统(Relational Database Management System)

## 数据库管理系统（DBMS）

- RDBMS(即-关系数据库管理系统(Relational Database Management System)
- NRDBMS(即-非系数据库管理系统(Non-Relational Database Management System)



## 主键&外键

1. 外键必须是主键
2. Primary key也可以同时是foreign key

> [MySQL 入门教程](https://wangchujiang.com/mysql-tutorial/)

