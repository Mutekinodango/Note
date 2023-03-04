# [你不知道的 Vscode 之光标操作-51CTO.COM](https://www.51cto.com/article/689632.html)

光标操作我们日常使用方向键，我们在日常中其实肌肉记忆下意识也会用到很多它的技巧，比如按住cmd键左右就可以到行首行尾，但却很难总结，一叶遮目的感觉。我抛砖引玉给个突破点：颗粒度。我们日常使用时左右方向键只会一个字符，即颗粒度是字符，如果我们想到词尾或者句尾，这就很麻烦了;这句话其实就标明了我们的重点：颗粒度;那么，如何操作光标的颗粒度呢?

**水平方向上**

结合方向键 

| 颗粒度 | mac             | win              |
| :----- | :-------------- | :--------------- |
| 单词   | option          | ctrl             |
| 行     | cmd             | 只用home/end即可 |
| 代码块 | cmd + shift + \ | Ctrl + shift + \ |

鼠标中键按住 区域选择

Trigger it with Shift+Alt+Left and Shift+Alt+Right.

扩大选区

Here's an example of expanding the selection with Shift+Alt+Right:

![](https://code.visualstudio.com/assets/docs/editor/codebasics/expandselection.gif)