import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter_app/common/navigation_helper.dart";
import "package:flutter_app/common/utils.dart";

class Home extends StatefulWidget {

    @override
    State<StatefulWidget> createState() {
        return _HomeState();
    }
}

class _HomeState extends State<Home> {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Container(
                color: Colors.black87,
                child: Stack(
                    children: <Widget>[
                        Positioned(
                            top: Utils.px2dp(100 + Utils.getScreenHeight()* 0.075),
                            left: Utils.px2dp(100),
                            child: Text(
                                "5852991/吾系庄庄",
                                style: TextStyle(
                                    fontSize: Utils.px2dp(32),
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),
                            )
                        ),
                        Positioned(
                            top: Utils.px2dp(140 + Utils.getScreenHeight()* 0.09),
                            left: Utils.px2dp(105),
                            child: Text(
                                "13660467470",
                                style: TextStyle(
                                    fontSize: Utils.px2dp(28),
                                    color: Colors.white
                                ),
                            )
                        ),
                        Positioned(
                            top: Utils.px2dp(150 + Utils.getScreenHeight()* 0.2),
                            left: Utils.px2dp(0),
                            child: Container(
                                width: Utils.getScreenWidth(),
                                height: Utils.px2dp(420),
                                child: GridView.count(
                                    scrollDirection: Axis.horizontal,
                                    crossAxisCount: 2,
                                        mainAxisSpacing: Utils.px2dp(20),
                                    crossAxisSpacing: Utils.px2dp(20),
                                        padding: EdgeInsets.only(left: Utils.px2dp(100), right: Utils.px2dp(100)),
                                    children: this.buildGridItems()
                                )
                            )
                        )
                    ],
                ),
            )
        );
    }

    List<Widget> buildGridItems() {
        List<Widget> items = [];
        for (int i = 0; i < 30; i++) {
            items.add(this.buildGridItem(i));
        }
        return items;
    }

    Widget buildGridItem(int index) {
        return Container(
            color: Colors.white,
            width: Utils.px2dp(250),
            height: Utils.px2dp(200),
            child: InkWell(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        Image(
                            width: Utils.px2dp(120),
                            height: Utils.px2dp(120),
                            image: AssetImage("assets/images/logo.jpg")
                        ),
                        Padding(padding: EdgeInsets.only(top: Utils.px2dp(10))),
                        Text(
                            "点餐",
                            style: TextStyle(
                                fontSize: Utils.px2dp(28),
                                color: Colors.black54
                            ),
                        )
                    ],
                ),
                onTap: () => NavigationHelper.navigateTo(context, "/pages/menu/menu")
            )
        );
    }
}
