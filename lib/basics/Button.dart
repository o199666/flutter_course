import 'package:flutter/material.dart'; //样式

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '普通按钮',
      //样式
      theme: new ThemeData(
        //蓝色主题
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('普通按钮')),
        body: Container(
          child: MyButton(),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
        //默认颜色
        color: Colors.lightBlue,
        //点击后的颜色
        highlightColor: Colors.blue[700],
        //亮度
        colorBrightness: Brightness.dark,
        elevation: 20,
        disabledElevation: 30,
        //波纹颜色
        splashColor: Colors.deepPurpleAccent,
        //定义形状
        shape: RoundedRectangleBorder(
            //定义边角弧度
            borderRadius: BorderRadius.circular(40.0)),
        child: Text("自定义按钮"),
        onPressed: () => {});
  }
}
