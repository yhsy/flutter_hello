import 'package:flutter/material.dart';

//主函数（入口函数），下面我会简单说说Dart的函数
void main() => runApp(MyApp());

// 声明MyApp类
class MyApp extends StatelessWidget {
  //重写build方法
  @override
  Widget build(BuildContext context) {
    //返回一个Material风格的组件
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        //创建一个Bar，并添加文本
        appBar: AppBar(
          title: Text('Flutter Hello'),
        ),
        //在主体的中间区域，添加一个hello world 的文本
        body: Center(
          // Text Wiget
          // child:Text(
          //   'Hello Text Widget111',
          //   textAlign: TextAlign.start,
          //   // 最大行数
          //   maxLines: 1,
          //   // 溢出
          //   overflow: TextOverflow.ellipsis,
          //   // 样式(文本样式)
          //   style: TextStyle(
          //     // 字号
          //     fontSize:25.0,
          //     fontWeight: FontWeight.bold,
          //     // 文字背景颜色
          //     backgroundColor: Colors.yellow,
          //     // 文字颜色
          //     color:Color.fromARGB(255, 255, 150, 150),
          //     // 文字颜色(透明度)
          //     // color:Colors.black.withOpacity(0.3),
          //     decoration:TextDecoration.underline,
          //     decorationStyle:TextDecorationStyle.solid,
          //   ),
          // ),
          // 容器
          child: Container(
            child: new Text(
              'Hello Container',
              style: TextStyle(fontSize: 40.0,color: Colors.white),
            ),
            //  整体对齐(9种对齐方式(顶部中部底部，左中右))
            alignment: Alignment.topLeft,
            width: 320,
            height: 400,
            // 统一设置margin
            margin: const EdgeInsets.all(30),
            // 统一设置padding
            // padding: const EdgeInsets.all(20),
            // 分开设置padding
            padding:const EdgeInsets.fromLTRB(10,30,0,0),
            // color: Colors.lightGreen,
            // 用来设置背景色和边框
            // 注意:设置背景色就要去掉color
            decoration:new BoxDecoration(
              // 渐变背景
              gradient:const LinearGradient(
                colors:[Colors.lightBlue,Colors.greenAccent,Colors.purple]
              ),
              // 纯色背景
              // color: Colors.lightGreen[500],
              // 边框
              border:Border.all(width:10,color:Colors.red)
            ),
          ),
        ),
      ),
    );
  }
}
