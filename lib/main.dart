import 'package:flutter/material.dart';
//主函数（入口函数），下面我会简单说说Dart的函数
void main() =>runApp(MyApp());
// 声明MyApp类
class MyApp extends StatelessWidget{
  //重写build方法
  @override
  Widget build(BuildContext context){
    //返回一个Material风格的组件
   return MaterialApp(
      title:'Welcome to Flutteraa',
      home:Scaffold(
        //创建一个Bar，并添加文本
        appBar:AppBar(
          title:Text('Text Widget'),
        ),
        //在主体的中间区域，添加一个hello world 的文本
        body:Center(
          child:Text(
            'Hello Text Widget111',
            textAlign: TextAlign.start,
            // 最大行数
            maxLines: 1,
            // 溢出
            overflow: TextOverflow.ellipsis,
            // 样式(文本样式)
            style: TextStyle(

              // 字号
              fontSize:25.0,
              fontWeight: FontWeight.bold,
              // 文字背景颜色
              backgroundColor: Colors.yellow,
              // 文字颜色
              color:Color.fromARGB(255, 255, 150, 150),
              // 文字颜色(透明度)
              // color:Colors.black.withOpacity(0.3),
              decoration:TextDecoration.underline,
              decorationStyle:TextDecorationStyle.solid,
            ),
          ),
        ),
      ),
    );
  }
}