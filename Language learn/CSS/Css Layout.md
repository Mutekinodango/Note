# CSS 盒子模型

box-sizing: content-box;

- `width` = border + padding + 内容的宽度
- `height` = border + padding + 内容的高度

TIP:当我们实现响应式布局时，这个特点尤其烦人。

box-sizing: border-box;

实际宽度：width

[学会使用box-sizing布局 - 简书](https://www.jianshu.com/p/e2eb0d8c9de6)

# CSS 浮动布局

**方法二：使用CSS的overflow属性**

给浮动元素的容器添加`overflow:hidden;`或`overflow:auto;`

**方法二：使用CSS的overflow属性**

```css
.wrapper {
  display: flow-root;
}
// 不支持IE
```

**方法五：使用CSS的:after伪元素**

```html
.news img {
  float: left;
  }

.news p {
  float: right;
  }

.clearfix:after{
  content: "020"; 
  display: block; 
  height: 0; 
  clear: both; 
  visibility: hidden;  
  }

.clearfix {
  /* 触发 hasLayout */ 
  zoom: 1; 
  }

<div class="news clearfix">
<img src="news-pic.jpg" />
<p>some text</p>
</div>
```

# CSS Flex 布局

## flex常见属性

- flex-direction 主轴方向

  即项目排列方向
