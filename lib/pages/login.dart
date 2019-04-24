import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter_app/common/navigation_helper.dart";
import "package:flutter_app/common/utils.dart";

class Login extends StatefulWidget {
	@override
	State<StatefulWidget> createState() {
		return _LoginState();
	}
}

class _LoginState extends State<Login> {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: SingleChildScrollView(
				child: Row(
					children: <Widget>[
						Image(
							image: AssetImage("assets/images/login.png"),
							height: Utils.getScreenHeight(),
							fit: BoxFit.fitHeight
						),
						Expanded(
							child: Center(
								child: Column(
									mainAxisAlignment: MainAxisAlignment.center,
									children: <Widget>[
										Container(
											width: Utils.px2dp(400),
											child: TextField(
												decoration: new InputDecoration(
													hintText: "账号",
												)
											)
										),
										Padding(padding: EdgeInsets.only(top: 10)),
										Container(
											width: Utils.px2dp(400),
											child: TextField(
												obscureText: true,
												decoration: new InputDecoration(
													hintText: "密码",
												)
											)
										),
										Padding(padding: EdgeInsets.only(top: 30)),
										MaterialButton(
											minWidth: Utils.px2dp(400),
											height: Utils.px2dp(60),
											color: Colors.deepOrange,
											textColor: Colors.white,
											child: new Text(
												"登录",
												style: TextStyle(
														fontSize: Utils.px2dp(24),
													fontWeight: FontWeight.bold
												),
											),
											onPressed: () => NavigationHelper.redirect(context, "/pages/home/home")
										)
									],
								)
							)
						)
					]
				)
			)
		);
	}
}
