RubyConf-WorkShop
=================

Repository for workshop of Ruby China Conference 2014

#银河计算器

####以下为最高机密，请在阅后10分钟内清除
10分钟之前，接到NASA的密电，在太平洋海域又发生一起爆炸，疑似与马航MH370、MH17、阿尔及利亚AH5017号失事时检测到的噪音余波拥有同一来源。

在马航MH370失事前，NASA截获了一个信号`"1"`，之后的也接收到了`1`次余波，之后的AH5017与MH17，分别截获了`"13"`和“`"1+2"`，也同样探测到了`13`和`3`场余波。经过声纹分析得知，这是来自银河系太阳系外的一种远程武器，于是NASA紧急反向工程研制了对抗装置，但是由于威力过大，需要精确计量，我们作为特聘顾问，需要为其定制精确的分析工具。

目前，新的信号正在不断被截获，发送频率愈来愈高，而且正从太平洋转移到欧亚大陆，所以我们时间紧迫。

请fork后clone一个seed代码库到本地:

`git clone --recursive git@github.com:YourUsername/RubyConf-2014-Workshop.git`


##Task 1
###读取单个的数字
* 可以直接返回其整数值
* 不考虑非整数和任何其他输入

```
Calc.eval('1') == 1 # assert one digit
Calc.eval('2') == 2 # assert one digit
Calc.eval('33') == 33 # assert multiple digit
Calc.eval('33') == 33 # assert multiple digit
```
##Task 2
###一对数字的四则运算
* 运算式中不存在任何非数字和运算符以外的字符，
* 除法遵循整数整除原则

```
Calc.eval('1+2') == 3 # plus
Calc.eval('1-1') == 0 # minus
Calc.eval('2*1') == 2 # multiply
Calc.eval('4/2') == 2 # divide
```
##Task Extra
###特例，减法也无法获得负数
```
Calc.eval('3-5') == 0 # minus no negative
Calc.eval('4-10') == 0
```
##Task 3
###多个运算
* 一个运算式中只包含同种类运算

```
Calc.eval('1+1+1') == 3 # multiple plus
Calc.eval('3*2*2') == 12 # multiple multiply
```
##Task Extra
###乘法变异了！
* 乘法变成了重复数字的次数

```
Calc.eval('1*3') == 111 # multiply changed into repeat
Calc.eval('4*5') == 44444 
Calc.eval('1*0') == 0 # zero remains
```
##Task 4
###多个运算
* 不同种类
* 不带优先级
* 顺序执行

```
Calc.eval('1-1+1') == 1 # multiple operations without priority
Calc.eval('1-1+1+3') == 4
```
##Task 5
###多个运算
* 不同种类
* 带优先级

```
Calc.eval('2+4/2') == 4 # multiple operations with priority
Calc.eval('4-6/2') == 1
```
##Task Extra
###带括号运算！
```
Calc.eval('(1-1)') == 0
Calc.eval('(1-1+1)') == 1
Calc.eval('(2-1)*2') == 11
Calc.eval('2*(3-2)') == 2
```
