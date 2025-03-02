

本人只是一个旁听计算机组成原理的垃圾
明年也许会正式学
这个作为代码储存池
下边是软件功能介绍

---

##### rars
是用Java做成的risc-v的模拟器 ~~but有时不能保存程序~~ 也可以把代码转换成bit文件

.text->inst.txt .data->dmem.txt(注意要用Hexadecimal Text)

打开代码时 进入文件夹后要刷新一下


##### GenUBit.bat
能将inst.txt和dmem.txt（同目录下）转换为out.txt

##### UartAssist
是串口发射 发射out.txt

##### a_tailed_risc-v_CPU_CSE.bit
是芯片ego1的配置data