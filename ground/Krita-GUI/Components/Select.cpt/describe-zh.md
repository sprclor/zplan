这是一个选择框，用于从多个选项中选择若干项

输入:
+ modal
  + 待选项
+ show
  + 最大展示项数
  + 排列规则
  + 各元素对应的标签
  + 溢出行为

维护:
+ modal
  + 选择状态
  + 已选/未选数量
  + 待选项总数量
  + 各元素对应的标签
+ show
  + 是否折叠

检测方法:
+ 该选项是否被选中

行为:
+ 折叠/展开
+ 激活/取消激活

事件:
+ 溢出
+ 折叠/展开/变更
+ 激活/取消激活/变更

### Mode
#### only
单选，只能并且必须选择一个

#### multi
多选，可以选择0或者任意多个
受影响的选项：
+ 激活项数限制