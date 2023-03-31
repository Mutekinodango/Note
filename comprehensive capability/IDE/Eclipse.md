# 中文乱码



- console控制台中文乱码，因为中国windows系统大部分皆是GBK编码，与默认UTF-8的 ，所以需要配置 Run as Run---Run Configurations, 将Common下面的Encoding改成GBK，控制台乱码问题就解决了.

  ==Eclipse的控制台必须用GBK编码。==

  ![这里写图片描述](https://img-blog.csdn.net/20180801140413204?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0Q1NzgzMzI3NDk=/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)

- java web (jsp)，网页输出若出现代码，

  - **解决办法1:**

    修改工作空间的编码格式：
    Window->Preferences->General->Workspace->Text file Encoding

> 参考：[Eclipse乱码问题最全解决方案「建议收藏」 - 腾讯云开发者社区-腾讯云](https://cloud.tencent.com/developer/article/2091346)

# 导入导出 Java web项目（jsp

通常是war （在软件工程中，*WAR*文件（Web应用程序归档，英語：Web application ARchive）是一种JAR文件，其中包含用来分发的JSP、Java Servlet、Java类、XML文件、标签库、静态）

导入：导入-war（web下）

如果是复制粘贴进workspace里的，直接![image-20230330014058736](C:\Users\76573\OneDrive\Study\Notes\Comprehensive Capability\image\image-20230330014058736.png)

导出：右击 dynamic web 项目即可导出war file

![image-20230330014118915](C:\Users\76573\OneDrive\Study\Notes\Comprehensive Capability\image\image-20230330014118915.png)



