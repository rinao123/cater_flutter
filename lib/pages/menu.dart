import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

class Menu extends StatefulWidget {
	@override
	State<StatefulWidget> createState() {
		return _MenuState();
	}
}

class _MenuState extends State<Menu> {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: Column(
				children: <Widget>[
					Text("Memu")
				]
			)
		);
	}
}
