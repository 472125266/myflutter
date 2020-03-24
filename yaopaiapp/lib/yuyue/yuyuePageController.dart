import 'package:flutter/material.dart';

class yuyuePage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return yuyuePageController();
  }

}
class yuyuePageController extends State<yuyuePage>{
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