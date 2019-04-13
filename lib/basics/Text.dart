import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      //应用名称
      title: '页面',
      //样式
      theme: new ThemeData(
        //蓝色主题
        primarySwatch: Colors.blue,
      ),
      //应用首页
      home: Scaffold(
        //标题栏
        appBar: AppBar(title: Text('标题')),
        //内容页
        body: Container(
            //Text.rich它代表文本的一个“片段”
            child: MyDefaultTextStyle()),
      ),
    );
  }
}

/**
 * 常用的文本属性
 */
class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      '这是一个Text这是一个Text这是一个Text这是一个Text',
      textDirection: TextDirection.ltr,
      //大小
      textScaleFactor: 2.0,
      //字体位置
      textAlign: TextAlign.center,
      //最大行数
      maxLines: 10,
      //溢出后的处理方式
      overflow: TextOverflow.fade,

      //样式
      style: TextStyle(
          color: Colors.lightBlue,
          fontSize: 18.0,
          //字体间距
          letterSpacing: 7.0,
          //行高
          height: 1,
          //背景颜色
          background: new Paint()..color = Colors.tealAccent,
          //字体
          fontFamily: '.SF UI Text',
          //下划线的位置
          decoration: TextDecoration.underline,
          //下划线的样式
          decorationStyle: TextDecorationStyle.wavy),
    );
  }
}

/**
 * 文本默认的样式，以及自定义样式
 */
class MyDefaultTextStyle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTextStyle(
      //设置文本默认样式
      style: TextStyle(
        color: Colors.tealAccent,
        fontSize: 20,
      ),
      textAlign: TextAlign.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Hello! Word"),
          Text("Hello! Word!!!"),
          Text(
            "Hello Word!!",
            style: TextStyle(
                //不继承
                inherit: false,
                fontSize: 23,
                color: Colors.lightBlue),
          ),
        ],
      ),
    );
  }
}

//一句话 多样式
class MyTextSpan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text.rich(TextSpan(children: [
      TextSpan(
          text: "Home:",
          style: TextStyle(
              color: Colors.teal, decorationStyle: TextDecorationStyle.dotted)),
      TextSpan(
          text: '这是拼接的一句话',
          style: TextStyle(
              color: Colors.lightBlue,
              decorationStyle: TextDecorationStyle.dotted))
    ]));
  }
}
