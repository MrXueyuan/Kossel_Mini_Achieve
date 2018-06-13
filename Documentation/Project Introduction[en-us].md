About to build Kossel_Mini 3D Printer Plan
=====
***
## Overview
This project is to build a 3D printer with highly replicable and customizable nature,the 3D printer structure is the delta structure,it has better printing accuracy than the same cost Cartesian structure, Scara structure and core/h-bot structure in the small part printing,and also has a faster printing speed on large part printing.
> __Technical Index__
> * Technology：Fused Deposition Modeling（FDM）
> * Structure：Delta
> * Controller：Arduino Mega2560 applied to ramps 1.4 platform
> * Firmware：Marlin Firmware
> * Move mode：α/β/γ Three-axis motion ,Print Parts Fixed.
> * Speed：α/β/γ 320mm/s·axis
> * Min Resolution：α/β/γ 50 Step/mm·axis
> * Max Resolution：α/β/γ 300 Step/mm·axis
> * Precision：Better than 0.3mm（300μm）
> * Printer head Aperture：0.4mm (Can change)
> * Print layer Thickness：0.05mm-4mm
> * Printable volume：Cylinder，Diameter 170mm，Height 240mm
> * Frame Volume：Three Prism，Edges 300mm，Height 600mm
> * Print surface：Hot, Diameter 170mm Round Glass，Not removable
> * Extruding machine Structure：Remote output
> * End Actuator Weight：Less than 50 grams
> * Hardware costs：Below 1000￥ <cite>[RMB]</cite>
> * Automatic horizontal calibration (automatic leveling)
>>***

## Project analysis
> __Algorithm__

本项目所使用的Delta结构是一种rostock结构变体，这是一种通过3个空间平行并联臂进行运动的结构。
通过将笛卡尔(正交)坐标系运动参数转换为并联臂高度参数，对末端执行器进行移动，达到打印3D物品的目的。
项目难点在于将工业上常用的 GCode 的笛卡尔坐标运动参数值转换为Delta运动参数。

在这里，我尝试使用了以下算法对坐标进行转换：
直接使用直线插值来减少运算量 ;-)

    delta[X_AXIS] = sqrt(delta_diagonal_rod_2 
    - sq(delta_tower1_x-cartesian[X_AXIS])
    - sq(delta_tower1_y-cartesian[Y_AXIS])) 
    + cartesian[Z_AXIS]; 

> __框架__

本项目使用欧标铝型材作为整体框架的构建材料，对材料方面较为宽容，且整体结构强度高，拆卸简易快捷，可便携化使用。
同时，顶角连接件采用3D打印件，大大增加了磨损部件的可更换性。

>__CAD设计及模型切片__

本项目采用<cite> OpenSCAD </cite>作为核心计算机辅助设计工具，<cite> OpenSCAD </cite>是一个 “非主流” 的CAD软件。
通过代码生成模型的形式，大大提高了程序员的操作性，不必费心费力去学习各种云里雾里的CAD软件。
同时，<cite> OpenSCAD </cite> 是一个开源软件，可以根据自身需要修改编译，基于GPL v3许可证。

通过简单高效的 <cite> OpenSCAD </cite> 脚本去绘制3D模型：
![](https://github.com/MrXueyuan/Kossel_Mini_Achieve/blob/master/Documentation/OpenSCAD%20CheatSheet.jpg?raw=true)

本项目使用<cite> Slic3r </cite>进行模型切片，即将3D模型文件 .stl 转换为3D打印机固件可以识别的 .gcode 文件。
<cite> Slic3r </cite>的软件可定制性非常高，可根据需要及算法需求生成必要的支撑结构，打印件打印完毕后通过后期减材加工的方式去除。虽然每个版本都有一定的Bug，但不影响使用。
同时，<cite> Slic3r </cite> 是reprap项目的开源软件，根据AGPLv3许可证授权。

>__末端执行器__

整个末端执行器采用散热性能更高的<cite> H散热鳍片 </cite>结构，更好的降低打印时拉丝的可能性。
末端执行器整体结构使用改进型的 E3D V6 挤出头结构，在原有E3D v6挤出头的基础上增加了一组光电传感器，在断丝时提供自动暂停打印的功能。
同时，挤出机将使用远端挤出的方式，大大降低了末端执行器的重量，使得整体打印精度提升。

>__挤出机__

本项目使用创新改进型Titan挤出机结构，在原本Titan挤出机结构的基础上通过增加一组从动轮以提高打印机送丝稳定型，降低打印机断丝的几率。

>__工作流程图__

![](https://github.com/MrXueyuan/Kossel_Mini_Achieve/blob/master/Documentation/Flowchart.jpg?raw=true)

## 应用方向
FDM工艺下，个人组装设计的3D打印机在实际应用中可以作为中低精度需求模型及快速工件打印，特别是Delta结构下，较小的打印件会有较高的打印精度，同时得益于远端挤出机，3D打印机在隔空层打印时拉丝现象会有较大改善。

## 总结
目前状况下，3D打印技术更倾向于金属烧结成型、光致成型树脂、生物材料等方向，但是，作为最基础的堆积熔融3D打印技术在技术探索及学习实践方面有着其他技术无可比拟的优势，在不同机械构型及打印技术方面也有一定的前瞻性。3D打印机在嵌入式技术中有着重要的意义，可以为学生提供一个综合性、有拓展空间的平台。

___


同时，这个项目的实现进展及技术工艺内容，
我将会以 GPL3.0 的协议开源在 Github 上。

        Edit by Visual Studio Code
            Syntax with Markdown
