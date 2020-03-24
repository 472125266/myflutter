import 'package:flutter/material.dart';

class quanziPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return quanziPageController();
  }

}
class quanziPageController extends State<quanziPage>{
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