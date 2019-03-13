import 'package:flutter/material.dart';

//集成与动态组件
class WrapDemo extends StatefulWidget{
    _WrapDemoState createState() => _WrapDemoState();
}

class _WrapDemoState extends State<WrapDemo> {
  //声明list数组
  List<Widget> list;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    list = new List<Widget>()..add(buildAddButton());
  }

  @override
  Widget build(BuildContext context) {
    //得到屏幕的宽和高，用来设置Container的宽和高
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.red,
            title: Text('WrapDemo'),
            elevation: 3.0,
        ),
        body: Center(
            child: Opacity(
                opacity: 0.6,
                child: Container(
                    width: width,
                    height: height/2,
                    //流式布局
                    child: Wrap(
                        children: list,
                        //设置间距
                        spacing: 26.0,
                    ),
                ),
            ),
        ),
    );
  }

  Widget buildAddButton() {
    //返回一个手势识别Wigdet ，用于处理事件
    return GestureDetector(
      onTap: (){
        if  (list.length < 12){
            setState(() {
                list.insert(list.length - 1, buildPhoto());
            });
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 80.0,
          height: 80.0,
          color: Colors.indigoAccent,
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  Widget buildPhoto() {
     return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            width: 80.0,
            height: 80.0,
            color: Colors.amber,
            child: Center(
                child: Text('照片'),
            ),
        ),
     );
  }
}

