import 'package:flutter/material.dart';

class ContainerDemo extends StatefulWidget {
  static enter(BuildContext context) {
    return Navigator.push(
        context,
        MaterialPageRoute(
            builder: (BuildContext content) => ContainerDemo(
                  title: "Container使用",
                )));
  }

  ContainerDemo({Key key, this.title}) : super(key: key);

  final String title;

  @override
  ContainerDemoState createState() => ContainerDemoState();
}

class ContainerDemoState extends State<ContainerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Center(
          child: Container(
            width: 200,
            height: 150,
            decoration: BoxDecoration(
                color: Colors.blue, //背景颜色
                border: Border.all(
                    width: 1,//边框大小
                    color: Colors.black  //边框颜色
                ),
                borderRadius: BorderRadius.all(Radius.circular(20)) //圆角大小
                ),
            child: Center(child: Text("Container 内容")),
          ),
        ),
      ),
    );
  }
}
