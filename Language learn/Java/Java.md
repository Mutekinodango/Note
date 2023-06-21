# 常见的数据转换方法

### 1 如何将字串 String 转换成整数 int?

**A. 有两个方法:**

- 1、

   

  int i = Integer.parseInt([String]);

   

  或

   

  i = Integer.parseInt([String],[int radix]);

  

- 2、 **int i = Integer.valueOf(my_str).intValue();**

注: 字串转成 Double, Float, Long 的方法大同小异.

### 2 如何将整数 int 转换成字串 String ?

A. 有叁种方法:

- 1、**String s = String.valueOf(i);**
- 2、**String s = Integer.toString(i);**
- 3、**String s = "" + i;**

注: Double, Float, Long 转成字串的方法大同小异.

### int -> String

**int i=12345;**

**String s="";**

第一种方法：**s=i+"";**

第二种方法：**s=String.valueOf(i);**

这两种方法有什么区别呢？作用是不是一样的呢？是不是在任何下都能互换呢？

### String -> int

**s="12345";**

**int i;**

第一种方法：**i=Integer.parseInt(s);**

第二种方法：**i=Integer.valueOf(s).intValue();**

这两种方法有什么区别呢？作用是不是一样的呢？是不是在任何下都能互换呢？

**以下是答案：**

第一种方法：**s=i+"";** //会产生两个String对象

第二种方法：**s=String.valueOf(i);** //直接使用String类的静态方法，只产生一个对象

第一种方法：**i=Integer.parseInt(s);** //直接使用静态方法，不会产生多余的对象，但会抛出异常

第二种方法：**i=Integer.valueOf(s).intValue();** //Integer.valueOf(s) 相当于 new Integer(Integer.parseInt(s))，也会抛异常，但会多产生一个对象