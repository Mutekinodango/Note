[Continue, Step Over, Step Into and Step Out actions in Visual Studio Code debugger explained | pawelgrzybek.com](https://pawelgrzybek.com/continue-step-over-step-into-and-step-out-actions-in-visual-studio-code-debugger-explained/)

说得很好，简而言之就是：

# Continue, Step Over, Step Into and Step Out actions in Visual Studio Code debugger explained

### 1、continue（继续）

**执行到下一断点**，
 如果函数内容的子函数也有断点，会跳到子函数的断点处

### 2、step over（单步跳过）

**一行一行的往下走，把没有断点的子函数当作一步**，
 如果这一行上有子函数，且**子函数内没有断点，则不会进入子函数中**，
 如果子函数内有断点，会跳到子函数的断点处，从断点处开始一行一行执行

### 3、step into（单步调试/单步执行）

**一行一行往下走**，
 如果这一行上有子函数，且**子函数内没有断点，则会进入子函数的第一行**，一行一行走完子函数，
 如果**子函数内有断点，仍然会跳到子函数的第一行**，从第一行开始，一行一行执行

### 4、step out（单步跳出）

**和step in相反的操作，跳出子函数**，
 如果子函数内没有断点，直接跳出子函数，
 如果子函数内有断点，会在执行完断点后再跳出子函数

作者：Li菜鸟
链接：https://www.jianshu.com/p/00f987441be6
来源：简书
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。