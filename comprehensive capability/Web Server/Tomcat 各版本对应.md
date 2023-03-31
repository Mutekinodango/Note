# 各版本对应问题

![image-20230326144057490](C:\Users\76573\OneDrive\Study\Notes\Comprehensive Capability\image\image-20230326144057490.png)

[Tomcat版本和各规范之间的对应关系\_13260529的技术博客\_51CTO博客](https://blog.51cto.com/u_13270529/5961288)

tomcat 10 的serlvet 包名变更

自从Oracle把Java EE捐给Apache后新版本的JavaEE也就正式的改名为了”Jakarta® EE”。值得注意的是2020年2月Tomcat发布了第10个版本，Tomcat 10 m1将JavaEE也换成了Jakarta® EE(Jakarta Servlet 5.0、Jakarta Server Pages 3.0、Jakarta Expression Language 4.0、Jakarta WebSocket 2.0、Jakarta Authentication 2.0 和 Jakarta Annotations 2.0 )。

Jakarta® EE较以前的JavaEE有一个非常非常重要的更新：包名不再是”javax.servlet.”而是改成了”jakarta.servlet.”，所以，如果需要兼容新版本的API就赶紧去改包名吧！

作者：yangsir
链接：https://www.jianshu.com/p/62a9acfab80b
来源：简书
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。

写给使用Tomcat 10遇到问题的同学，以及因为遇到问题而降级到Tomcat 9的同学。

我就是前者，我在重写SpringMVC Controller接口的时候，发现人家方法参数传参都是javax.*包下的，我这种导入jakarta.*包根本用不了，情况就是这样：

 

【原因】：因为2017年Oracle公司把JavaEE移交给了开源组织，并且要求开源组织不再使用Java这个名字，所以Eclipse基金会将其更名为Jakarta EE (雅加达)。所以我们要知道三件事，一是javax.*包和jakarta.*包只是命名空间更改了，二是不止Tomcat，其他开源库Jetty，Undertow等也遇到了这样的问题，而且该情况不会因为你版本降级了缓解，他会持续存在，三是spring 5版本没办法支持jakarta.*，想调用API传参都没法传，不能用就是不能用。

【发展】：spring开发者意识到这个问题，也规划了在spring 6版本支持jakarta EE，毕竟那么多开源项目等着用不是。2021年9月就有了要支持jakarta的消息，发布正式的支持的时间是2022年的Q4。但是这是不是说当下该问题没救了呢。不是的，当前我们就有了spring 6的SNAPSHOT版本，虽然还是快照版本，在持续迭代，但是已经能够支持Jakarta了。

【解决方法】：

第一步：在pom.xml文件中导入资源：

    <repositories>
        <repository>
            <id>repository.spring.snapshot</id>
            <name>Spring Snapshot Repository</name>
            <url>https://repo.spring.io/snapshot</url>
        </repository>
    </repositories>
第二步：导入springMVC 6.0.0的依赖：

        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-webmvc</artifactId>
            <version>6.0.0-SNAPSHOT</version>
        </dependency>
之后Tomcat的所有版本，都不会再支持javax.*而只能支持jakarta.*了，咱们也不能一遇到问题就版本降级，还是要积极拥抱新技术不是…
————————————————
版权声明：本文为CSDN博主「光头吴克」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。
原文链接：https://blog.csdn.net/pan2635376816/article/details/125011655



[(7条消息) Tomcat10不支持javax的问题\_tomcat10没有javax\_光头吴克的博客-CSDN博客](https://blog.csdn.net/pan2635376816/article/details/125011655)



引用 **org.apache.tomcat.util.http.fileupload.servlet.*** 或 **org.apache.commons.fileupload.servlet.*** 的时候，java文件最开头标出异常：**The type jakarta.servlet.http.HttpServletRequest cannot be resolved. It is indirectly referenced from required .class files**

上网查了一下感觉像是javax的jakarta冲突问题，网上大多数解决方法就是放弃tomcat10用回tomcat9，难道就没有其他更好的解决方法了吗？

————————————————
原文作者：NgSiuKei
转自链接：https://learnku.com/java/t/59433
版权声明：著作权归作者所有。商业转载请联系作者获得授权，非商业转载请保留以上作者信息和原文链接。

[如何解决tomcat10仲javax和jakarta的冲突问题 | Java | Java 技术论坛](https://learnku.com/java/t/59433)

未来升级到servlet5（既支持tomcat10）的时候，各个技术框架会有一个大的断层，不再能够向下兼容。

==# 关于tomcat10和Jakarta的兼容问题==

==[(7条消息) 关于tomcat10和Jakarta的兼容问题\_tomcat10和jdk1.8兼容吗\_我为摸鱼代盐的博客-CSDN博客](https://blog.csdn.net/weixin_49972910/article/details/116381077)==

结论就是所以在选择Java版本时，需要选择JakartaEE9版本，这样才兼容。

只能用Tomcat 9

dynamic web module 4