import 'package:flutter/material.dart';

class mePage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return mePageController();
  }

}
class mePageController extends State<mePage>{
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