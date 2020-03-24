import 'package:flutter/material.dart';
import 'package:yaopaiapp/common/Common.dart';
import 'package:yaopaiapp/home/homePageController.dart';
import 'package:yaopaiapp/yuyue/yuyuePageController.dart';
import 'package:yaopaiapp/center/centerPageController.dart';
import 'package:yaopaiapp/quanzi/quanziPageController.dart';
import 'package:yaopaiapp/me/mePageController.dart';

import 'package:yaopaiapp/common/Common.dart';

//StatefulWidget 有状态控件，这样的控件拥有自己的私有数据和业务逻辑
class Index extends StatefulWidget {
  @override
  State<Index> createState() => new _IndexState();
}

// with
/*
* 混合 mixins (with)
* 混合的对象是类;可以混合多个
* */
class _IndexState extends State<Index> with SingleTickerProviderStateMixin {

  PageController pageController;
  int page = 0;

  //添加图片地址,需要动态更换图片
  String bigImg = 'iamges/centerAdd.png';

  //创建4个Tabbar
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: this.page);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        //去除点击的动画效果
        brightness: Brightness.light,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Scaffold(
              body: PageView(
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  new homePage(),
                  new yuyuePage(),
                  new centerPage(),
                  new quanziPage(),
                  new mePage()
                ],
                controller: pageController,
                onPageChanged: onPageChanged,
              ),
              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                selectedItemColor: Common.appThemeColor,
                unselectedItemColor: Common.appTabbarNorColor,
                selectedFontSize: 14,
                unselectedFontSize: 14,
                items: [
                  BottomNavigationBarItem(
                      icon: Image.asset(
                        "iamges/faXianNor.png",
                        scale: 2.2,
                      ),
                      activeIcon: Image.asset(
                        "iamges/faXianSel.png",
                        scale: 2.2,
                      ),
                      title: Text(
                        '首页',
                        style: TextStyle(fontFamily: 'Rock Salt'),
                      )),
                  BottomNavigationBarItem(
                      icon: Image.asset(
                        "iamges/cityNor.png",
                        scale: 2.2,
                      ),
                      activeIcon: Image.asset(
                        "iamges/citySel.png",
                        scale: 2.2,
                      ),
                      title: Text('预约')),
                  BottomNavigationBarItem(
                      icon: new Container(), title: new Container()),
                  BottomNavigationBarItem(
                      icon: Image.asset(
                        "iamges/studyNor.png",
                        scale: 2.2,
                      ),
                      activeIcon: Image.asset(
                        "iamges/studySel.png",
                        scale: 2.2,
                      ),
                      title: Text('学习')),
                  BottomNavigationBarItem(
                      icon: Image.asset(
                        "iamges/meNor.png",
                        scale: 2.2,
                      ),
                      activeIcon: Image.asset(
                        "iamges/meSel.png",
                        scale: 2.2,
                      ),
                      title: Text('我的')),
                ],
                onTap: onTap,
                currentIndex: page,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: new Container(
                child: FlatButton(
                    onPressed: () {
                      onBigImgTap();
                    },
                    child: new Container(
                      child: new Image.asset(
                        bigImg,
                        width: 40.0,
                        height: 40.0,
                      ),
                      padding: const EdgeInsets.only(bottom: 38),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }

  //组件移除，例如页面销毁的时候会依次执行：deactivate > dispose
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

//修改bottomNavigationBar的点击事件
  void onTap(int index) {
    if (index != 2) {
      setState(() {
        this.bigImg = 'iamges/centerAdd.png';
      });
    }
    pageController.jumpToPage(index);
  }

//添加图片的点击事件
  void onBigImgTap() {
    setState(() {
      this.page = 2;
      this.bigImg = 'iamges/centerAddXuanZhuanNew.png';
      onTap(this.page);
    });
  }

  void onPageChanged(int page) {
    setState(() {
      this.page = page;
    });
  }
}
