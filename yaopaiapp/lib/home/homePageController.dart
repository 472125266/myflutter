import 'package:flutter/material.dart';

class homePage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return homePageController();
  }

}
class homePageController extends State<homePage>{
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
