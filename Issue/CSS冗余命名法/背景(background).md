在CSS中，`Background`能展示静态和动态生成的图片，可以控制图片边框盒基于视口的对齐方式、重复方式、尺寸...等

对齐使用background-position，重复使用background-repeat（它们的值使用no-repeat/repeat）,尺寸使用background-size...

你会发现除了`重复方式`以外的其它属性都有对应的解决办法，比如Flex容器的`对齐方式`，justify-content、align-items，`尺寸`可以使用width、height等，Background选择了一种重新定义描述的方法来发展它，这种解决问题的方式会使它的描述方案越发复杂。



###### 解决方案

使用新的思路实现并拓展Background。

Background可以看成容器和项目的组合，以此思路来理解`CSS Background`就是：项目是一种受限颇多的专用于展示图像信息的载体（因为这样设计可以使浏览器便于优化？）。

Background应视为一个窗口，不仅可以用来展示图像和受限的动态图像（CSS Gradient），还可以动态的获取其它节点的渲染结果，这意味着它是一种机制而非元素。

