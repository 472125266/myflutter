import 'package:flutter/material.dart';

class centerPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return centerPageController();
  }

}
class centerPageController extends State<centerPage>{
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Column(
        children: <Widget>[
          new Text("啊啊啊啊"),
          new Text("啊啊啊啊"),
          new Text("啊啊啊啊"),
        ],
      ),
    );
  }
}